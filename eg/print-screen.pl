use strict;
use warnings;
use utf8;
use feature qw( say );
use File::Spec;
use File::Basename;
use lib File::Spec->catdir(dirname(__FILE__), '..', 'lib');
use Encode;

use Acme::LoveLive::Unit;
for my $member (Acme::LoveLive::Unit::μ's->members) {
    say encode_utf8('image:  '. $member->colorize(sprintf('%s: %s', $member->fullname_ja, $member->call)));
    say encode_utf8('cylume: '. $member->colorize_by_cylume(sprintf('%s: %s', $member->fullname_ja, $member->call)));
}
