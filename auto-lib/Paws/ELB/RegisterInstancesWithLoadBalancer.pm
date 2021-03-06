
package Paws::ELB::RegisterInstancesWithLoadBalancer {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::RegisterEndPointsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancerResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::RegisterInstancesWithLoadBalancer - Arguments for method RegisterInstancesWithLoadBalancer on Paws::ELB

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterInstancesWithLoadBalancer on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method RegisterInstancesWithLoadBalancer.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to RegisterInstancesWithLoadBalancer.

As an example:

  $service_obj->RegisterInstancesWithLoadBalancer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Instances => ArrayRef[Paws::ELB::Instance]

  

A list of instance IDs that should be registered with the load
balancer.










=head2 B<REQUIRED> LoadBalancerName => Str

  

The name associated with the load balancer. The name must be unique
within your set of load balancers.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterInstancesWithLoadBalancer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

