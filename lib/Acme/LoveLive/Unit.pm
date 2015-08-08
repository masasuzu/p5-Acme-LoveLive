package Acme::LoveLive::Unit;
use 5.10.0;
use strict;
use warnings;
use utf8;

use Acme::LoveLive::Data;
use Acme::LoveLive::Character;

sub unit_name { die 'abstract method' }
sub unit_data { Acme::LoveLive::Data->unit(shift->unit_name) }

sub member_fullnames {
    my ($class) = @_;
    return (keys %{ $class->unit_data->{member} });
}

sub members {
    my ($class) = @_;

    return map { "Acme::LoveLive::Character::$_"->instance } $class->member_fullnames;
}

package Acme::LoveLive::Unit::μ::s;
use parent qw(Acme::LoveLive::Unit);

*panayo = \&hanayo;
*pana   = \&hanayo;

sub unit_name { "μ's" }

{
    my $class = __PACKAGE__;
    for my $person ($class->members) {
        no strict 'refs';
        *{"${class}::@{[$person->first_name_en]}"} = sub { $person };
    }
}

package Acme::LoveLive::Unit::A_RISE;
use parent qw(Acme::LoveLive::Unit);

sub unit_name { "A-RISE" }

{
    my $class = __PACKAGE__;
    for my $person ($class->members) {
        no strict 'refs';
        *{"${class}::@{[$person->first_name_en]}"} = sub { $person };
    }
}

package Acme::LoveLive::Unit::Aqours;
use parent qw(Acme::LoveLive::Unit);

sub unit_name { "Aqours" }

{
    my $class = __PACKAGE__;
    for my $person ($class->members) {
        no strict 'refs';
        *{"${class}::@{[$person->first_name_en]}"} = sub { $person };
    }
}
package Acme::LoveLive::Unit::BiBi;
use parent qw(Acme::LoveLive::Unit);

sub unit_name { "BiBi" }

{
    my $class = __PACKAGE__;
    for my $person ($class->members) {
        no strict 'refs';
        *{"${class}::@{[$person->first_name_en]}"} = sub { $person };
    }
}

package Acme::LoveLive::Unit::lily_white;
use parent qw(Acme::LoveLive::Unit);

sub unit_name { "lily white" }

{
    my $class = __PACKAGE__;
    for my $person ($class->members) {
        no strict 'refs';
        *{"${class}::@{[$person->first_name_en]}"} = sub { $person };
    }
}

package Acme::LoveLive::Unit::Printemps;
use parent qw(Acme::LoveLive::Unit);

sub unit_name { "Printemps" }

{
    my $class = __PACKAGE__;
    for my $person ($class->members) {
        no strict 'refs';
        *{"${class}::@{[$person->first_name_en]}"} = sub { $person };
    }
}


1;

