package Acme::LoveLive::Person;
use 5.10.0;
use strict;
use warnings;

use Term::ANSIColor qw( colored );

sub colorize {
    my ($class, $target) = @_;
    return colored($target, $class->color);
}

sub colorize_by_cylume {
    my ($class, $target) = @_;
    return colored($target, $class->cyalume_color);
}

sub call { '' }

1;
__END__
