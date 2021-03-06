
package Paws::ELB::RemoveAvailabilityZonesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::RemoveAvailabilityZonesOutput

=head1 ATTRIBUTES

=head2 AvailabilityZones => ArrayRef[Str]

  

A list of updated Availability Zones for the load balancer.











=cut

