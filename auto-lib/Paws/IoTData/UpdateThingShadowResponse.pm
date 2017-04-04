
package Paws::IoTData::UpdateThingShadowResponse;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::UpdateThingShadowResponse

=head1 ATTRIBUTES


=head2 Payload => Str

The state information, in JSON format.


=head2 _request_id => Str


=cut

