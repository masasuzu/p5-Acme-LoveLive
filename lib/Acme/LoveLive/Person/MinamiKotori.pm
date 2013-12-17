package Acme::LoveLive::Person::MinamiKotori;
use parent 'Acme::LoveLive::Person';
use 5.10.0;
use strict;
use warnings;
use utf8;

# ホワイト
# RGB 240, 240, 240
sub cyalume_color { 'rgb555' }

# グレー
# RGB 118, 118, 118
sub color { 'rgb222' }
sub name  { '南ことり' }
sub cv    { '内田彩' }
sub call  { 'ことりのおやつにするぞ(・8・)' }

1;
__END__
