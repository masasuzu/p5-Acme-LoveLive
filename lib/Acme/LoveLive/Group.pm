package Acme::LoveLive::Group;
use 5.10.0;
use strict;
use warnings;
use utf8;

use Acme::LoveLive::Data;

sub group_name { die 'abstract method' }
sub group_data { Acme::LoveLive::Data->group(shift->group_name) }

sub member_fullnames {
    my ($class) = @_;
    return (keys %{ $class->group_data });
}

sub members {
    my ($class) = @_;

    return map { "Acme::LoveLive::Person::$_"->instance } $class->member_fullnames;
}

1;
