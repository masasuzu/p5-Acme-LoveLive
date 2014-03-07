use utf8;
package Acme::LoveLive::Group::μ::s;
use 5.10.0;
use strict;
use warnings;

use Acme::LoveLive::Data;
use Acme::LoveLive::Person;

*panayo = \&hanayo;
*pana   = \&hanayo;

sub group_name { "μ's" }
sub group_data { Acme::LoveLive::Data->group(shift->group_name) }

sub members {
    my $class = shift;

    my $data = $class->group_data;
    return map { my $m = $data->{$_}->{first_name_en}; $class->$m } keys %{ $data };
}

{
    my $class = __PACKAGE__;
    my $data = $class->group_data;
    for my $fullname_en (keys %{ $data }) {
        my $first_name_en = $data->{$fullname_en}->{first_name_en};

        no strict 'refs';
        *{"${class}::${first_name_en}"} = sub { "Acme::LoveLive::Person::${fullname_en}"->instance };
    }
}

1;

__END__
