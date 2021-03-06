
package Paws::ELB::DescribeEndPointStateOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Paws::ELB::InstanceState]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeEndPointStateOutput

=head1 ATTRIBUTES

=head2 InstanceStates => ArrayRef[Paws::ELB::InstanceState]

  

A list containing health information for the specified instances.











=cut

