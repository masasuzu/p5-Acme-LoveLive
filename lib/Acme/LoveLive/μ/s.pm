use utf8;
package Acme::LoveLive::μ::s;
use 5.10.0;
use strict;
use warnings;

use Acme::LoveLive::μ::s::Member::KousakaHonoka;
use Acme::LoveLive::μ::s::Member::MinamiKotori;
use Acme::LoveLive::μ::s::Member::SonodaUmi;
use Acme::LoveLive::μ::s::Member::KoizumiHanayo;
use Acme::LoveLive::μ::s::Member::HoshizoraRin;
use Acme::LoveLive::μ::s::Member::NishikinoMaki;
use Acme::LoveLive::μ::s::Member::AyaseEli;
use Acme::LoveLive::μ::s::Member::TojoNozomi;
use Acme::LoveLive::μ::s::Member::YazawaNico;

sub eli    { "Acme::LoveLive::μ::s::Member::AyaseEli"      }
sub nozomi { "Acme::LoveLive::μ::s::Member::TojoNozomi"    }
sub nico   { "Acme::LoveLive::μ::s::Member::YazawaNico"    }
sub honoka { "Acme::LoveLive::μ::s::Member::KousakaHonoka" }
sub kotori { "Acme::LoveLive::μ::s::Member::MinamiKotori"  }
sub umi    { "Acme::LoveLive::μ::s::Member::SonodaUmi"     }
sub hanayo { "Acme::LoveLive::μ::s::Member::KoizumiHanayo" }
sub rin    { "Acme::LoveLive::μ::s::Member::HoshizoraRin"  }
sub maki   { "Acme::LoveLive::μ::s::Member::NishikinoMaki" }

*panayo = \&hanayo;
*pana   = \&hanayo;

sub members {
    return
        $_[0]->eli,    $_[0]->nozomi, $_[0]->nico,
        $_[0]->honoka, $_[0]->umi,    $_[0]->kotori,
        $_[0]->maki,   $_[0]->rin,    $_[0]->hanayo,
    ;
}

1;

__END__
