use strict;
use warnings;
use utf8;
use feature qw( say );
use File::Spec;
use File::Basename;
use lib File::Spec->catdir(dirname(__FILE__), '..', 'lib');

use Encode;
use Acme::LoveLive::Group::μ's;
for my $member (Acme::LoveLive::Group::μ's->members) {
    say 'image:  '. $member->colorize(sprintf('%s: %s', $member->name, $member->call));
    say 'cylume: '. $member->colorize_by_cylume(sprintf('%s: %s', $member->name, $member->call));
}
