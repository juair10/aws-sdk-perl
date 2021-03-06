
package Paws::Glacier::CompleteMultipartUpload {
  use Moose;
  has accountId => (is => 'ro', isa => 'Str', required => 1);
  has archiveSize => (is => 'ro', isa => 'Str');
  has checksum => (is => 'ro', isa => 'Str');
  has uploadId => (is => 'ro', isa => 'Str', required => 1);
  has vaultName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUpload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ArchiveCreationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUploadResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::CompleteMultipartUpload - Arguments for method CompleteMultipartUpload on Paws::Glacier

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteMultipartUpload on the 
Amazon Glacier service. Use the attributes of this class
as arguments to method CompleteMultipartUpload.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CompleteMultipartUpload.

As an example:

  $service_obj->CompleteMultipartUpload(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> accountId => Str

  

The C<AccountId> is the AWS Account ID. You can specify either the AWS
Account ID or optionally a '-', in which case Amazon Glacier uses the
AWS Account ID associated with the credentials used to sign the
request. If you specify your Account ID, do not include hyphens in it.










=head2 archiveSize => Str

  

The total size, in bytes, of the entire archive. This value should be
the sum of all the sizes of the individual parts that you uploaded.










=head2 checksum => Str

  

The SHA256 tree hash of the entire archive. It is the tree hash of
SHA256 tree hash of the individual parts. If the value you specify in
the request does not match the SHA256 tree hash of the final assembled
archive as computed by Amazon Glacier, Amazon Glacier returns an error
and the request fails.










=head2 B<REQUIRED> uploadId => Str

  

The upload ID of the multipart upload.










=head2 B<REQUIRED> vaultName => Str

  

The name of the vault.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteMultipartUpload in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

