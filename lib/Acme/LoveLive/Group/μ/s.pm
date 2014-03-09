use utf8;
package Acme::LoveLive::Group::μ::s;
use 5.10.0;
use strict;
use warnings;
use parent qw(Acme::LoveLive::Group);

use Acme::LoveLive::Data;
use Acme::LoveLive::Person;

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

__END__
