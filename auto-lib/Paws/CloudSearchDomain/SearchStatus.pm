package Paws::CloudSearchDomain::SearchStatus {
  use Moose;
  has rid => (is => 'ro', isa => 'Str');
  has timems => (is => 'ro', isa => 'Num');
}
1;
