package Paws::AlexaForBusiness;
  use Moose;
  sub service { 'a4b' }
  sub version { '2017-11-09' }
  sub target_prefix { 'AlexaForBusiness' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateDeviceWithRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::AssociateDeviceWithRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSkillGroupWithRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::AssociateSkillGroupWithRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoomSkillParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteRoomSkillParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDeviceFromRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DisassociateDeviceFromRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSkillGroupFromRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DisassociateSkillGroupFromRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoomSkillParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetRoomSkillParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSkills {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::ListSkills', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRoomSkillParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::PutRoomSkillParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::ResolveRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::RevokeInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchRooms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchRooms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSkillGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchSkillGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SendInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeviceSync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::StartDeviceSync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateDeviceWithRoom AssociateSkillGroupWithRoom CreateProfile CreateRoom CreateSkillGroup CreateUser DeleteProfile DeleteRoom DeleteRoomSkillParameter DeleteSkillGroup DeleteUser DisassociateDeviceFromRoom DisassociateSkillGroupFromRoom GetDevice GetProfile GetRoom GetRoomSkillParameter GetSkillGroup ListSkills ListTags PutRoomSkillParameter ResolveRoom RevokeInvitation SearchDevices SearchProfiles SearchRooms SearchSkillGroups SearchUsers SendInvitation StartDeviceSync TagResource UntagResource UpdateDevice UpdateProfile UpdateRoom UpdateSkillGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness - Perl Interface to AWS Alexa For Business

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AlexaForBusiness');
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

Alexa for Business makes it easy for you to use Alexa in your
organization. Alexa for Business gives you the tools you need to manage
Alexa devices, enroll your users, and assign skills, at scale. You can
build your own context-aware voice skills using the Alexa Skills Kit,
and the Alexa for Business APIs, and you can make these available as
private skills for your organization. Alexa for Business also makes it
easy to voice-enable your products and services, providing
context-aware voice experiences for your customers.

=head1 METHODS

=head2 AssociateDeviceWithRoom([DeviceArn => Str, RoomArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::AssociateDeviceWithRoom>

Returns: a L<Paws::AlexaForBusiness::AssociateDeviceWithRoomResponse> instance

Associates a device to a given room. This applies all the settings from
the room profile to the device, and all the skills in any skill groups
added to that room. This operation requires the device to be online, or
a manual sync is required.


=head2 AssociateSkillGroupWithRoom([RoomArn => Str, SkillGroupArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::AssociateSkillGroupWithRoom>

Returns: a L<Paws::AlexaForBusiness::AssociateSkillGroupWithRoomResponse> instance

Associates a skill group to a given room. This enables all skills in
the associated skill group on all devices in the room.


=head2 CreateProfile(Address => Str, DistanceUnit => Str, ProfileName => Str, TemperatureUnit => Str, Timezone => Str, WakeWord => Str, [ClientRequestToken => Str, MaxVolumeLimit => Int, PSTNEnabled => Bool, SetupModeDisabled => Bool])

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateProfile>

Returns: a L<Paws::AlexaForBusiness::CreateProfileResponse> instance

Creates a new room profile with the specified details.


=head2 CreateRoom(RoomName => Str, [ClientRequestToken => Str, Description => Str, ProfileArn => Str, ProviderCalendarId => Str, Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]])

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateRoom>

Returns: a L<Paws::AlexaForBusiness::CreateRoomResponse> instance

Creates a room with the specified details.


=head2 CreateSkillGroup(SkillGroupName => Str, [ClientRequestToken => Str, Description => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateSkillGroup>

Returns: a L<Paws::AlexaForBusiness::CreateSkillGroupResponse> instance

Creates a skill group with a specified name and description.


=head2 CreateUser(UserId => Str, [ClientRequestToken => Str, Email => Str, FirstName => Str, LastName => Str, Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]])

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateUser>

Returns: a L<Paws::AlexaForBusiness::CreateUserResponse> instance

Creates a user.


=head2 DeleteProfile([ProfileArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteProfile>

Returns: a L<Paws::AlexaForBusiness::DeleteProfileResponse> instance

Deletes a room profile by the profile ARN.


=head2 DeleteRoom([RoomArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteRoom>

Returns: a L<Paws::AlexaForBusiness::DeleteRoomResponse> instance

Deletes a room by the room ARN.


=head2 DeleteRoomSkillParameter(ParameterKey => Str, SkillId => Str, [RoomArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteRoomSkillParameter>

Returns: a L<Paws::AlexaForBusiness::DeleteRoomSkillParameterResponse> instance

Deletes room skill parameter details by room, skill, and parameter key
ID.


=head2 DeleteSkillGroup([SkillGroupArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteSkillGroup>

Returns: a L<Paws::AlexaForBusiness::DeleteSkillGroupResponse> instance

Deletes a skill group by skill group ARN.


=head2 DeleteUser(EnrollmentId => Str, [UserArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteUser>

Returns: a L<Paws::AlexaForBusiness::DeleteUserResponse> instance

Deletes a specified user by user ARN and enrollment ARN.


=head2 DisassociateDeviceFromRoom([DeviceArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::DisassociateDeviceFromRoom>

Returns: a L<Paws::AlexaForBusiness::DisassociateDeviceFromRoomResponse> instance

Disassociates a device from its current room. The device continues to
be connected to the Wi-Fi network and is still registered to the
account. The device settings and skills are removed from the room.


=head2 DisassociateSkillGroupFromRoom([RoomArn => Str, SkillGroupArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::DisassociateSkillGroupFromRoom>

Returns: a L<Paws::AlexaForBusiness::DisassociateSkillGroupFromRoomResponse> instance

Disassociates a skill group from a specified room. This disables all
skills in the skill group on all devices in the room.


=head2 GetDevice([DeviceArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetDevice>

Returns: a L<Paws::AlexaForBusiness::GetDeviceResponse> instance

Gets the details of a device by device ARN.


=head2 GetProfile([ProfileArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetProfile>

Returns: a L<Paws::AlexaForBusiness::GetProfileResponse> instance

Gets the details of a room profile by profile ARN.


=head2 GetRoom([RoomArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetRoom>

Returns: a L<Paws::AlexaForBusiness::GetRoomResponse> instance

Gets room details by room ARN.


=head2 GetRoomSkillParameter(ParameterKey => Str, SkillId => Str, [RoomArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetRoomSkillParameter>

Returns: a L<Paws::AlexaForBusiness::GetRoomSkillParameterResponse> instance

Gets room skill parameter details by room, skill, and parameter key
ARN.


=head2 GetSkillGroup([SkillGroupArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetSkillGroup>

Returns: a L<Paws::AlexaForBusiness::GetSkillGroupResponse> instance

Gets skill group details by skill group ARN.


=head2 ListSkills([MaxResults => Int, NextToken => Str, SkillGroupArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::ListSkills>

Returns: a L<Paws::AlexaForBusiness::ListSkillsResponse> instance

Lists all enabled skills in a specific skill group.


=head2 ListTags(Arn => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::ListTags>

Returns: a L<Paws::AlexaForBusiness::ListTagsResponse> instance

Lists all tags for a specific resource.


=head2 PutRoomSkillParameter(RoomSkillParameter => L<Paws::AlexaForBusiness::RoomSkillParameter>, SkillId => Str, [RoomArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::PutRoomSkillParameter>

Returns: a L<Paws::AlexaForBusiness::PutRoomSkillParameterResponse> instance

Updates room skill parameter details by room, skill, and parameter key
ID. Not all skills have a room skill parameter.


=head2 ResolveRoom(SkillId => Str, UserId => Str)

Each argument is described in detail in: L<Paws::AlexaForBusiness::ResolveRoom>

Returns: a L<Paws::AlexaForBusiness::ResolveRoomResponse> instance

Determines the details for the room from which a skill request was
invoked. This operation is used by skill developers.


=head2 RevokeInvitation([EnrollmentId => Str, UserArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::RevokeInvitation>

Returns: a L<Paws::AlexaForBusiness::RevokeInvitationResponse> instance

Revokes an invitation and invalidates the enrollment URL.


=head2 SearchDevices([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchDevices>

Returns: a L<Paws::AlexaForBusiness::SearchDevicesResponse> instance

Searches devices and lists the ones that meet a set of filter criteria.


=head2 SearchProfiles([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchProfiles>

Returns: a L<Paws::AlexaForBusiness::SearchProfilesResponse> instance

Searches room profiles and lists the ones that meet a set of filter
criteria.


=head2 SearchRooms([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchRooms>

Returns: a L<Paws::AlexaForBusiness::SearchRoomsResponse> instance

Searches rooms and lists the ones that meet a set of filter and sort
criteria.


=head2 SearchSkillGroups([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchSkillGroups>

Returns: a L<Paws::AlexaForBusiness::SearchSkillGroupsResponse> instance

Searches skill groups and lists the ones that meet a set of filter and
sort criteria.


=head2 SearchUsers([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchUsers>

Returns: a L<Paws::AlexaForBusiness::SearchUsersResponse> instance

Searches users and lists the ones that meet a set of filter and sort
criteria.


=head2 SendInvitation([UserArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::SendInvitation>

Returns: a L<Paws::AlexaForBusiness::SendInvitationResponse> instance

Sends an enrollment invitation email with a URL to a user. The URL is
valid for 72 hours or until you call this operation again, whichever
comes first.


=head2 StartDeviceSync(Features => ArrayRef[Str|Undef], [DeviceArn => Str, RoomArn => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::StartDeviceSync>

Returns: a L<Paws::AlexaForBusiness::StartDeviceSyncResponse> instance

Resets a device and its account to the known default settings by
clearing all information and settings set by previous users.


=head2 TagResource(Arn => Str, Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>])

Each argument is described in detail in: L<Paws::AlexaForBusiness::TagResource>

Returns: a L<Paws::AlexaForBusiness::TagResourceResponse> instance

Adds metadata tags to a specified resource.


=head2 UntagResource(Arn => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::AlexaForBusiness::UntagResource>

Returns: a L<Paws::AlexaForBusiness::UntagResourceResponse> instance

Removes metadata tags from a specified resource.


=head2 UpdateDevice([DeviceArn => Str, DeviceName => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateDevice>

Returns: a L<Paws::AlexaForBusiness::UpdateDeviceResponse> instance

Updates the device name by device ARN.


=head2 UpdateProfile([Address => Str, DistanceUnit => Str, MaxVolumeLimit => Int, ProfileArn => Str, ProfileName => Str, PSTNEnabled => Bool, SetupModeDisabled => Bool, TemperatureUnit => Str, Timezone => Str, WakeWord => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateProfile>

Returns: a L<Paws::AlexaForBusiness::UpdateProfileResponse> instance

Updates an existing room profile by room profile ARN.


=head2 UpdateRoom([Description => Str, ProfileArn => Str, ProviderCalendarId => Str, RoomArn => Str, RoomName => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateRoom>

Returns: a L<Paws::AlexaForBusiness::UpdateRoomResponse> instance

Updates room details by room ARN.


=head2 UpdateSkillGroup([Description => Str, SkillGroupArn => Str, SkillGroupName => Str])

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateSkillGroup>

Returns: a L<Paws::AlexaForBusiness::UpdateSkillGroupResponse> instance

Updates skill group details by skill group ARN.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

