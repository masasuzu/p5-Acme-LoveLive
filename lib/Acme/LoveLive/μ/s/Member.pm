use utf8;
package Acme::LoveLive::μ::s::Member;
use 5.10.0;
use strict;
use warnings;

use Term::ANSIColor qw( colored );

sub colorize {
    my ($class, $target) = @_;
    return colored($target, $class->color);
}

sub call { '' }

1;
__END__
