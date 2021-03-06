
package Paws::DirectConnect::Locations;
  use Moose;
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Location]', traits => ['NameInRequest'], request_name => 'locations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Locations

=head1 ATTRIBUTES


=head2 Locations => ArrayRef[L<Paws::DirectConnect::Location>]

A list of colocation hubs where network providers have equipment. Most
regions have multiple locations available.


=head2 _request_id => Str


=cut

1;