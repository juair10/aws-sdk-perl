
package Paws::ELB::CreateAccessPointOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has DNSName => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::CreateAccessPointOutput

=head1 ATTRIBUTES

=head2 DNSName => Str

  

The DNS name for the load balancer.











=cut

