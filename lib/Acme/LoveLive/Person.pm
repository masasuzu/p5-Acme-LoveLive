package Acme::LoveLive::Person;
use strict;
use warnings;
use utf8;

use Term::ANSIColor qw( colored );
use Acme::LoveLive::Data;

our $COLOR_MODE = 'image';

sub colorize {
    my ($self, $target) = @_;
    my $method = "${COLOR_MODE}_rgb";
    return colored($target, $self->$method);
}

sub colorize_by_image {
    my ($self, $target) = @_;
    return colored($target, $self->image_rgb);
}

sub colorize_by_cylume {
    my ($self, $target) = @_;
    return colored($target, $self->cyalume_rgb);
}

sub phrases {
    my ($self,) = @_;
    $self->{__phrases} //= [ $self->call ];
    return @{ $self->{__phrases} };
}

sub add_phrases {
    my ($self, @phrases) = @_;
    $self->{__phrases} = [$self->phrases, @phrases];
}

{
    my $data = Acme::LoveLive::Data->data;
    my @attributes = qw(
        fullname_ja first_name_en last_name_en call cv
        irc_color cyalume_rgb image_rgb
    );

    my $_instance;
    sub instance {
        my ($class) = @_;
        my $package = __PACKAGE__;
        die 'abstract method' if $package eq $class;

        (my $fullname = $class) =~ s/${package}:://;
        return $_instance->{$fullname} if exists $_instance->{$fullname};

        my %args = map { my $attr = $_; "__$attr" => $data->{person}->{$fullname}->{$attr}; } @attributes;
        return $_instance->{$fullname} = bless \%args, $class;
    }
    *new = \&instance;

    for my $fullname (keys %{ $data->{person} }) {
        no strict 'refs';

        my $class = "Acme::LoveLive::Person::$fullname";
        @{"${class}::ISA"} = qw(
            Acme::LoveLive::Person
        );
        for my $attribute (@attributes) {
            *{"${class}::${attribute}"} = sub { shift->{"__$attribute"} };
        }
    }
}

1;


