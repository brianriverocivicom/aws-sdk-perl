
package Paws::IoTAnalytics::BatchPutMessage;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelName', required => 1);
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::Message]', traits => ['NameInRequest'], request_name => 'messages', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/messages/batch');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::BatchPutMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::BatchPutMessage - Arguments for method BatchPutMessage on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutMessage on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method BatchPutMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutMessage.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $BatchPutMessageResponse = $iotanalytics->BatchPutMessage(
      ChannelName => 'MyChannelName',
      Messages    => [
        {
          messageId => 'MyMessageId',          # min: 1, max: 128
          payload   => 'BlobMessagePayload',

        },
        ...
      ],

    );

    # Results:
    my $BatchPutMessageErrorEntries =
      $BatchPutMessageResponse->BatchPutMessageErrorEntries;

    # Returns a L<Paws::IoTAnalytics::BatchPutMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/BatchPutMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The name of the channel where the messages are sent.



=head2 B<REQUIRED> Messages => ArrayRef[L<Paws::IoTAnalytics::Message>]

The list of messages to be sent. Each message has format: '{
"messageId": "string", "payload": "string"}'.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutMessage in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

