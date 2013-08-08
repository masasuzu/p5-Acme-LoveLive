package Acme::LoveLive::Muse;
use 5.008005;
use strict;
use warnings;

use Acme::LoveLive::Muse::KousakaHonoka;
use Acme::LoveLive::Muse::MinamiKotori;
use Acme::LoveLive::Muse::SonodaUmi;
use Acme::LoveLive::Muse::KoizumiHanayo;
use Acme::LoveLive::Muse::HoshizoraRin;
use Acme::LoveLive::Muse::NishikinoMaki;
use Acme::LoveLive::Muse::AyaseEli;
use Acme::LoveLive::Muse::TojoNozomi;
use Acme::LoveLive::Muse::YazawaNico;

sub members {
    return [
        'Acme::LoveLive::Muse::KousakaHonoka',
        'Acme::LoveLive::Muse::MinamiKotori',
        'Acme::LoveLive::Muse::SonodaUmi',
        'Acme::LoveLive::Muse::KoizumiHanayo',
        'Acme::LoveLive::Muse::HoshizoraRin',
        'Acme::LoveLive::Muse::NishikinoMaki',
        'Acme::LoveLive::Muse::AyaseEli',
        'Acme::LoveLive::Muse::TojoNozomi',
        'Acme::LoveLive::Muse::YazawaNico',
    ];
}

1;

__END__
