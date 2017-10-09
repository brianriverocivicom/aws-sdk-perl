
package Paws::ApiGateway::ImportApiKeys;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failOnWarnings' );
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format' , required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportApiKeys');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apikeys?mode=import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::ApiKeyIds');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ImportApiKeys - Arguments for method ImportApiKeys on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportApiKeys on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method ImportApiKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportApiKeys.

As an example:

  $service_obj->ImportApiKeys(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

The payload of the POST request to import API keys. For the payload
format, see API Key File Format.



=head2 FailOnWarnings => Bool

A query parameter to indicate whether to rollback ApiKey importation
(C<true>) or not (C<false>) when error is encountered.



=head2 B<REQUIRED> Format => Str

A query parameter to specify the input format to imported API keys.
Currently, only the C<csv> format is supported.

Valid values are: C<"csv">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportApiKeys in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

