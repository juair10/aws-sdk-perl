
use Paws::API;


package Paws::CognitoSync {
  warn "Paws::CognitoSync is not stable / supported / entirely developed";
  use Moose;
  sub service { 'cognito-sync' }
  sub version { '2014-06-30' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub BulkPublish {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::BulkPublish', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityPoolUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DescribeIdentityPoolUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::DescribeIdentityUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBulkPublishDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::GetBulkPublishDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityPoolConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::GetIdentityPoolConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityPoolUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::ListIdentityPoolUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::ListRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::RegisterDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityPoolConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::SetIdentityPoolConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubscribeToDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::SubscribeToDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnsubscribeFromDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::UnsubscribeFromDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoSync::UpdateRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync - Perl Interface to AWS Amazon Cognito Sync

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CognitoSync')->new;
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



Amazon Cognito Sync

Amazon Cognito Sync provides an AWS service and client library that
enable cross-device syncing of application-related user data.
High-level client libraries are available for both iOS and Android. You
can use these libraries to persist data locally so that it's available
even if the device is offline. Developer credentials don't need to be
stored on the mobile device to access the service. You can use Amazon
Cognito to obtain a normalized user ID and credentials. User data is
persisted in a dataset that can store up to 1 MB of key-value pairs,
and you can have up to 20 datasets per user identity.

With Amazon Cognito Sync, the data stored for each identity is
accessible only to credentials assigned to that identity. In order to
use the Cognito Sync service, you need to make API calls using
credentials retrieved with Amazon Cognito Identity service.

If you want to use Cognito Sync in an Android or iOS application, you
will probably want to make API calls via the AWS Mobile SDK. To learn
more, see the Developer Guide for Android and the Developer Guide for
iOS.










=head1 METHODS

=head2 BulkPublish(IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::BulkPublish>

Returns: a L<Paws::CognitoSync::BulkPublishResponse> instance

  

Initiates a bulk publish of all existing datasets for an Identity Pool
to the configured stream. Customers are limited to one successful bulk
publish per 24 hours. Bulk publish is an asynchronous request,
customers can see the status of the request via the
GetBulkPublishDetails operation.











=head2 DeleteDataset(DatasetName => Str, IdentityId => Str, IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::DeleteDataset>

Returns: a L<Paws::CognitoSync::DeleteDatasetResponse> instance

  

Deletes the specific dataset. The dataset will be deleted permanently,
and the action can't be undone. Datasets that this dataset was merged
with will no longer report the merge. Any subsequent operation on this
dataset will result in a C<ResourceNotFoundException>.

C<DeleteDataset> can be called with temporary user credentials provided
by Cognito Identity or with developer credentials.











=head2 DescribeDataset(DatasetName => Str, IdentityId => Str, IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::DescribeDataset>

Returns: a L<Paws::CognitoSync::DescribeDatasetResponse> instance

  

Gets meta data about a dataset by identity and dataset name. With
Amazon Cognito Sync, each identity has access only to its own data.
Thus, the credentials used to make this API call need to have access to
the identity data.

C<DescribeDataset> can be called with temporary user credentials
provided by Cognito Identity or with developer credentials. You should
use Cognito Identity credentials to make this API call.











=head2 DescribeIdentityPoolUsage(IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::DescribeIdentityPoolUsage>

Returns: a L<Paws::CognitoSync::DescribeIdentityPoolUsageResponse> instance

  

Gets usage details (for example, data storage) about a particular
identity pool.

C<DescribeIdentityPoolUsage> can only be called with developer
credentials. You cannot make this API call with the temporary user
credentials provided by Cognito Identity.











=head2 DescribeIdentityUsage(IdentityId => Str, IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::DescribeIdentityUsage>

Returns: a L<Paws::CognitoSync::DescribeIdentityUsageResponse> instance

  

Gets usage information for an identity, including number of datasets
and data usage.

C<DescribeIdentityUsage> can be called with temporary user credentials
provided by Cognito Identity or with developer credentials.











=head2 GetBulkPublishDetails(IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::GetBulkPublishDetails>

Returns: a L<Paws::CognitoSync::GetBulkPublishDetailsResponse> instance

  

Get the status of the last BulkPublish operation for an identity pool.











=head2 GetIdentityPoolConfiguration(IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::GetIdentityPoolConfiguration>

Returns: a L<Paws::CognitoSync::GetIdentityPoolConfigurationResponse> instance

  

Gets the configuration settings of an identity pool.











=head2 ListDatasets(IdentityId => Str, IdentityPoolId => Str, [NextToken => Str, MaxResults => Int])

Each argument is described in detail in: L<Paws::CognitoSync::ListDatasets>

Returns: a L<Paws::CognitoSync::ListDatasetsResponse> instance

  

Lists datasets for an identity. With Amazon Cognito Sync, each identity
has access only to its own data. Thus, the credentials used to make
this API call need to have access to the identity data.

C<ListDatasets> can be called with temporary user credentials provided
by Cognito Identity or with developer credentials. You should use the
Cognito Identity credentials to make this API call.











=head2 ListIdentityPoolUsage([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CognitoSync::ListIdentityPoolUsage>

Returns: a L<Paws::CognitoSync::ListIdentityPoolUsageResponse> instance

  

Gets a list of identity pools registered with Cognito.

C<ListIdentityPoolUsage> can only be called with developer credentials.
You cannot make this API call with the temporary user credentials
provided by Cognito Identity.











=head2 ListRecords(DatasetName => Str, IdentityId => Str, IdentityPoolId => Str, [NextToken => Str, SyncSessionToken => Str, MaxResults => Int, LastSyncCount => Num])

Each argument is described in detail in: L<Paws::CognitoSync::ListRecords>

Returns: a L<Paws::CognitoSync::ListRecordsResponse> instance

  

Gets paginated records, optionally changed after a particular sync
count for a dataset and identity. With Amazon Cognito Sync, each
identity has access only to its own data. Thus, the credentials used to
make this API call need to have access to the identity data.

C<ListRecords> can be called with temporary user credentials provided
by Cognito Identity or with developer credentials. You should use
Cognito Identity credentials to make this API call.











=head2 RegisterDevice(IdentityId => Str, IdentityPoolId => Str, Platform => Str, Token => Str)

Each argument is described in detail in: L<Paws::CognitoSync::RegisterDevice>

Returns: a L<Paws::CognitoSync::RegisterDeviceResponse> instance

  

Registers a device to receive push sync notifications.











=head2 SetIdentityPoolConfiguration(IdentityPoolId => Str, [CognitoStreams => Paws::CognitoSync::CognitoStreams, PushSync => Paws::CognitoSync::PushSync])

Each argument is described in detail in: L<Paws::CognitoSync::SetIdentityPoolConfiguration>

Returns: a L<Paws::CognitoSync::SetIdentityPoolConfigurationResponse> instance

  

Sets the necessary configuration for push sync.











=head2 SubscribeToDataset(DatasetName => Str, DeviceId => Str, IdentityId => Str, IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::SubscribeToDataset>

Returns: a L<Paws::CognitoSync::SubscribeToDatasetResponse> instance

  

Subscribes to receive notifications when a dataset is modified by
another device.











=head2 UnsubscribeFromDataset(DatasetName => Str, DeviceId => Str, IdentityId => Str, IdentityPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoSync::UnsubscribeFromDataset>

Returns: a L<Paws::CognitoSync::UnsubscribeFromDatasetResponse> instance

  

Unsubscribes from receiving notifications when a dataset is modified by
another device.











=head2 UpdateRecords(DatasetName => Str, IdentityId => Str, IdentityPoolId => Str, SyncSessionToken => Str, [RecordPatches => ArrayRef[Paws::CognitoSync::RecordPatch], DeviceId => Str, ClientContext => Str])

Each argument is described in detail in: L<Paws::CognitoSync::UpdateRecords>

Returns: a L<Paws::CognitoSync::UpdateRecordsResponse> instance

  

Posts updates to records and adds and deletes records for a dataset and
user.

C<UpdateRecords> can only be called with temporary user credentials
provided by Cognito Identity. You cannot make this API call with
developer credentials.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

