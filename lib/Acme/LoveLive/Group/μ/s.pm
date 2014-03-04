use utf8;
package Acme::LoveLive::Group::μ::s;
use 5.10.0;
use strict;
use warnings;

use Acme::LoveLive::Data;
use Acme::LoveLive::Person;

# FIXME: 自動でメソッドが決まるように
sub eli    { "Acme::LoveLive::Person::AyaseEli"      }
sub nozomi { "Acme::LoveLive::Person::TojoNozomi"    }
sub nico   { "Acme::LoveLive::Person::YazawaNico"    }
sub honoka { "Acme::LoveLive::Person::KosakaHonoka"  }
sub kotori { "Acme::LoveLive::Person::MinamiKotori"  }
sub umi    { "Acme::LoveLive::Person::SonodaUmi"     }
sub hanayo { "Acme::LoveLive::Person::KoizumiHanayo" }
sub rin    { "Acme::LoveLive::Person::HoshizoraRin"  }
sub maki   { "Acme::LoveLive::Person::NishikinoMaki" }

*panayo = \&hanayo;
*pana   = \&hanayo;

sub group_name { "μ's" }
sub group_data { Acme::LoveLive::Data->group(shift->group_name) }

sub members {
    my $class = shift;

    my $data = $class->group_data;
    return map { my $m = $data->{$_}->{first_name_en}; $class->$m } keys %{ $data };
}

1;

__END__
