
package Paws::Greengrass::GetGroupCertificateAuthority;
  use Moose;
  has CertificateAuthorityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CertificateAuthorityId', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupCertificateAuthority');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetGroupCertificateAuthorityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetGroupCertificateAuthority - Arguments for method GetGroupCertificateAuthority on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupCertificateAuthority on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetGroupCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupCertificateAuthority.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetGroupCertificateAuthorityResponse =
      $greengrass->GetGroupCertificateAuthority(
      CertificateAuthorityId => 'My__string',
      GroupId                => 'My__string',

      );

    # Results:
    my $GroupCertificateAuthorityArn =
      $GetGroupCertificateAuthorityResponse->GroupCertificateAuthorityArn;
    my $GroupCertificateAuthorityId =
      $GetGroupCertificateAuthorityResponse->GroupCertificateAuthorityId;
    my $PemEncodedCertificate =
      $GetGroupCertificateAuthorityResponse->PemEncodedCertificate;

   # Returns a L<Paws::Greengrass::GetGroupCertificateAuthorityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/greengrass/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityId => Str

The ID of the certificate authority.



=head2 B<REQUIRED> GroupId => Str

The ID of the AWS Greengrass group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupCertificateAuthority in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

