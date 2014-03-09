package Acme::LoveLive::Group;
use 5.10.0;
use strict;
use warnings;
use utf8;

use Acme::LoveLive::Data;
use Acme::LoveLive::Person;

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

package Acme::LoveLive::Group::μ::s;
use parent qw(Acme::LoveLive::Group);

*panayo = \&hanayo;
*pana   = \&hanayo;

sub group_name { "μ's" }

{
    my $class = __PACKAGE__;
    for my $person ($class->members) {
        no strict 'refs';
        *{"${class}::@{[$person->first_name_en]}"} = sub { $person };
    }
}


1;

