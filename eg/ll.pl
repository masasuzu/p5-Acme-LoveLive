use strict;
use warnings;
use utf8;
use feature qw( say );

use Encode;
use Acme::LoveLive::μ's;
for my $member (Acme::LoveLive::μ's->members) {
    say encode_utf8($member->colorize(sprintf('%s: %s', $member->name, $member->call)));
    say encode_utf8($member->colorize_by_cylume(sprintf('%s: %s', $member->name, $member->call)));
}
