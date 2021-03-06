
package Paws::CloudFront::ListCloudFrontOriginAccessIdentities2014_10_21 {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCloudFrontOriginAccessIdentities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2014-10-21/origin-access-identity/cloudfront');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListCloudFrontOriginAccessIdentitiesResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult

=head1 ATTRIBUTES

=head2 Marker => Str

  

Use this when paginating results to indicate where to begin in your
list of origin access identities. The results include identities in the
list that occur after the marker. To get the next page of results, set
the Marker to the value of the NextMarker from the current page's
response (which is also the ID of the last identity on that page).









=head2 MaxItems => Str

  

The maximum number of origin access identities you want in the response
body.











=cut

