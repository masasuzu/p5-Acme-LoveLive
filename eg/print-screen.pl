use strict;
use warnings;
use utf8;
use feature qw( say );
use File::Spec;
use File::Basename;
use lib File::Spec->catdir(dirname(__FILE__), '..', 'lib');
binmode STDOUT, 'utf8';

use Acme::LoveLive::Unit;
for my $member (Acme::LoveLive::Unit::μ's->members) {
    say 'image:  '. $member->colorize(sprintf('%s: %s', $member->fullname_ja, $member->call));
    say 'cylume: '. $member->colorize_by_cylume(sprintf('%s: %s', $member->fullname_ja, $member->call));
}
