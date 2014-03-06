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
    my $data = Acme::LoveLive::Data->data;
    my @attributes = qw(
        fullname_ja first_name_en last_name_en call cv
        irc_color cyalume_rgb image_rgb
    );
    for my $fullname (keys %{ $data->{person} }) {
        no strict 'refs';

        my $class = "Acme::LoveLive::Person::$fullname";
        @{"${class}::ISA"} = qw(
            Acme::LoveLive::Person
        );

        for my $attribute (@attributes) {
            *{"${class}::${attribute}"} = sub { shift->{"__$attribute"} };
        }

        *{"${class}::new"} = sub {
            my ($klass) = @_;
            my %args = map { my $attr = $_; "__$attr" => $data->{person}->{$fullname}->{$attr}; } @attributes;
            return bless \%args, $klass;
        };
    }
}

1;


