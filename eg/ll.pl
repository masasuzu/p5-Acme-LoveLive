use strict;
use warnings;
use utf8;
use feature qw( say );

use Encode;
use Acme::LoveLive::Group::μ's;
for my $member (Acme::LoveLive::Group::μ's->members) {
    say $member->colorize(sprintf('%s: %s', $member->name, $member->call));
    say $member->colorize_by_cylume(sprintf('%s: %s', $member->name, $member->call));
}
