package Paws::Net::QueryCaller {
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 

  sub array_flatten_string {
    my $self = shift;
    return ($self->flattened_arrays)?'%s.%d':'%s.member.%d';
  }

  sub _is_internal_type {
    my ($self, $att_type) = @_;
    return ($att_type eq 'Str' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_querycaller_params {
    my ($self, $params) = @_;
    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key = $params->meta->get_attribute($att)->does('Paws::Net::Caller::Attribute::Trait::NameInRequest')?$params->meta->get_attribute($att)->request_name:$att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;

        if ($self->_is_internal_type($att_type)) {
          $p{ $key } = $params->{$att};
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              $p{ sprintf($self->array_flatten_string, $key, $i) } = $value;
              $i++
            }
          } else {
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              my %complex_value = $self->_to_querycaller_params($value);
              map { $p{ sprintf($self->array_flatten_string . ".%s", $key, $i, $_) } = $complex_value{$_} } keys %complex_value;
              $i++
            }
          }
        } elsif ($params->$att->does('Paws::API::StrToObjMapParser')) {
          my $i = 1;
          foreach my $map_key (keys %{ $params->$att->Map }){
            $p{ "$key.$i.Name" } = $map_key;
            my %complex_value = $self->_to_querycaller_params($params->$att->Map->{ $map_key });
            map { $p{ "$key.$i.Value.$_" } = $complex_value{$_} } keys %complex_value;
            $i++;
          }
        } elsif ($params->$att->does('Paws::API::StrToStrMapParser')) {
          my $i = 1;
          foreach my $map_key (keys %{ $params->$att->Map }){
            $p{ "$key.entry.$i.key" }   = $map_key;
            $p{ "$key.entry.$i.value" } = $params->$att->Map->{ $map_key };
            $i++;
          }
        } else {
          my %complex_value = $self->_to_querycaller_params($params->$att);
          map { $p{ "$key.$_" } = $complex_value{$_} } keys %complex_value;
        }
      }
    }
    return %p;
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    $request->url($self->_api_endpoint . '/');
    $request->uri('/');
    $request->method('POST');

    $request->parameters({ Action => $call->_api_call, 
                           Version   => $self->version,
                           $self->_to_querycaller_params($call) 
    });

    $request->generate_content_from_parameters;

    $self->sign($request);

    return $request;
  }
}

1;
