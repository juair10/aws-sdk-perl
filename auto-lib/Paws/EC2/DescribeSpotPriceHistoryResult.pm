
package Paws::EC2::DescribeSpotPriceHistoryResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);
  has SpotPriceHistory => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotPrice]', xmlname => 'spotPriceHistorySet', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotPriceHistoryResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.









=head2 SpotPriceHistory => ArrayRef[Paws::EC2::SpotPrice]

  

The historical Spot Prices.











=cut

