
package Paws::CloudFormation::GetTemplate {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::GetTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetTemplate - Arguments for method GetTemplate on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplate on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method GetTemplate.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplate.

As an example:

  $service_obj->GetTemplate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> StackName => Str

  

The name or the unique identifier associated with the stack, which are
not always interchangeable:

=over

=item * Running stacks: You can specify either the stack's name or its
unique stack ID.

=item * Deleted stacks: You must specify the unique stack ID.

=back

Default: There is no default value.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

