package Acme::LoveLive::Person;
use strict;
use warnings;
use utf8;

use Term::ANSIColor qw( colored );
use Acme::LoveLive::Data;

our $COLOR_MODE = 'image';

sub colorize {
    my ($class, $target) = @_;
    my $method = "${COLOR_MODE}_rgb";
    return colored($target, $class->$method);
}

sub colorize_by_image {
    my ($class, $target) = @_;
    return colored($target, $class->image_rgb);
}

sub colorize_by_cylume {
    my ($class, $target) = @_;
    return colored($target, $class->cyalume_rgb);
}

sub call { '' }

{
    my $data = Acme::LoveLive::Data->new->data;
    for my $fullname (keys %{ $data->{person} }) {
        no strict 'refs';

        my $class = "Acme::LoveLive::Person::$fullname";
        @{"${class}::ISA"} = qw(
            Acme::LoveLive::Person
        );
        for my $method (qw( name_ja call cv irc_color cyalume_rgb image_rgb )) {
            *{"${class}::${method}"} = sub {
                $data->{person}->{$fullname}->{$method};
            };
        }
    }
}

1;


