
package Paws::Lambda::GetEventSource {
  use Moose;
  has UUID => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceConfiguration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetEventSourceResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetEventSource - Arguments for method GetEventSource on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventSource on the 
AWS Lambda service. Use the attributes of this class
as arguments to method GetEventSource.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetEventSource.

As an example:

  $service_obj->GetEventSource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> UUID => Str

  

The AWS Lambda assigned ID of the event source mapping.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for GetEventSource in Paws::Lambda

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

