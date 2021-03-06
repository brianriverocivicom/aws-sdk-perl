package Paws::IAM::ManagedPolicyDetail;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AttachmentCount => (is => 'ro', isa => 'Int');
  has CreateDate => (is => 'ro', isa => 'Str');
  has DefaultVersionId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsAttachable => (is => 'ro', isa => 'Bool');
  has Path => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyVersionList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::PolicyVersion]');
  has UpdateDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ManagedPolicyDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ManagedPolicyDetail object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdateDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ManagedPolicyDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about a managed policy, including the policy's
ARN, versions, and the number of principal entities (users, groups, and
roles) that the policy is attached to.

This data type is used as a response element in the
GetAccountAuthorizationDetails operation.

For more information about managed policies, see Managed Policies and
Inline Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
in the I<Using IAM> guide.

=head1 ATTRIBUTES


=head2 Arn => Str

  


=head2 AttachmentCount => Int

  The number of principal entities (users, groups, and roles) that the
policy is attached to.


=head2 CreateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the policy was created.


=head2 DefaultVersionId => Str

  The identifier for the version of the policy that is set as the default
(operative) version.

For more information about policy versions, see Versioning for Managed
Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
in the I<Using IAM> guide.


=head2 Description => Str

  A friendly description of the policy.


=head2 IsAttachable => Bool

  Specifies whether the policy can be attached to an IAM user, group, or
role.


=head2 Path => Str

  The path to the policy.

For more information about paths, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 PolicyId => Str

  The stable and unique string identifying the policy.

For more information about IDs, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 PolicyName => Str

  The friendly name (not ARN) identifying the policy.


=head2 PolicyVersionList => ArrayRef[L<Paws::IAM::PolicyVersion>]

  A list containing information about the versions of the policy.


=head2 UpdateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the policy was last updated.

When a policy has only one version, this field contains the date and
time when the policy was created. When a policy has more than one
version, this field contains the date and time when the most recent
policy version was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

