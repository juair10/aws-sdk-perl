package Aws::OpsWorks::ElasticIp {
  use Moose;
  with ('AWS::API::ResultParser');
  has Domain => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ip => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
}
1