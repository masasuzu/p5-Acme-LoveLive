use 5.18.1;
use strict;
use warnings;

package Acme::LoveLive::Person;
use Term::ANSIColor qw( colored );

sub colorize {
    my ($class, $target) = @_;
    return colored($target, $class->image_rgb);
}

sub colorize_by_cylume {
    my ($class, $target) = @_;
    return colored($target, $class->cyalume_rgb);
}

sub call { '' }

our @PEOPLE = qw(
    eli     nozomi  nico
    honoka  umi     kotori
    maki    rin     hanayo
);

our %NAME_MAP = qw(
    eli         AyaseEli
    nozomi      TojoNozomi
    nico        YazawaNico
    honoka      KousakaHonoka
    umi         SonodaUmi
    kotori      MinamiKotori
    maki        NishikinoMaki
    rin         HoshizoraRin
    hanayo      KoizumiHanayo
);

use YAML::Syck;
my $data = LoadFile(*DATA);

for my $first_name (@PEOPLE) {
    no strict 'refs';

    my $name = $NAME_MAP{$first_name};
    my $class = "Acme::LoveLive::Person::$name";
    @{"${class}::ISA"} = qw(
        Acme::LoveLive::Person
    );
    for my $method (qw( name call cv irc_color cyalume_rgb image_rgb )) {
        *{"${class}::${method}"} = sub {
            $data->{people}->{$first_name}->{$method};
        };
    }
}

1;


__DATA__

---

people:
  eli:
    name:        '絢瀬絵里'
    call:        'かしこい かわいい エリーチカ'
    cv:          '南條愛乃'
    irc_color:   'cyan'
    cyalume_rgb: 'rgb233' # パステルブルー RGB 87,  145, 173
    image_rgb:   'rgb344' # 水色           RGB 175, 223, 228

  nozomi:
    name:        '東條希'
    call:        '希パワー注入 はい、ぷしゅー'
    cv:          '楠田亜衣奈'
    irc_color:   'purple'
    cyalume_rgb: 'rgb223' # バイオレット RGB 112, 93, 168
    image_rgb:   'rgb223' # バイオレット RGB 112, 93, 168

  nico:
    name:        '矢澤にこ'
    call:        'にっこにっこにー'
    cv:          '徳井青空'
    irc_color:   'pink'
    cyalume_rgb: 'rgb533' # ピンク             RGB 234, 145, 152
    image_rgb:   'rgb503' # ショッキングピンク RGB 255,   0, 153

  honoka:
    name:        '高坂穂乃果'
    call:        'ファイトだよ'
    cv:          '新田恵海'
    irc_color:   'orange'
    cyalume_rgb: 'rgb530' # オレンジ RGB 255, 153,   0
    image_rgb:   'rgb431' # 山吹色   RGB 239, 169,  42

  umi:
    name:        '園田海未'
    call:        'ラブアローシュート'
    cv:          '三森すずこ'
    irc_color:   'blue'
    cyalume_rgb: 'rgb023' # ブルー RGB  0, 111, 171
    image_rgb:   'rgb123' # 群青   RGB 70,  93, 170

  kotori:
    name:        '南ことり'
    call:        'ことりのおやつにするぞ(・8・)'
    cv:          '内田彩'
    irc_color:   'grey'
    cyalume_rgb: 'rgb555' # ホワイト RGB 240, 240, 240
    image_rgb:   'rgb222' # グレー   RGB 118, 118, 118

  maki:
    name:        '西木野真姫'
    call:        'でっしょー'
    cv:          'Pile'
    irc_color:   'red'
    cyalume_rgb: 'rgb401' # レッド RGB 224,  0,  42
    image_rgb:   'rgb511' # 朱色   RGB 239, 69,  74

  rin:
    name:        '星空凜'
    call:        'にゃんにゃんにゃー'
    cv:          '飯田里穂'
    irc_color:   'yellow'
    cyalume_rgb: 'rgb552' # パステルイエロー RGB 255, 255, 102
    image_rgb:   'rgb144' # ターコイズ       RGB 64,  224, 208

  hanayo:
    name:        '小泉花陽'
    call:        'ダレカタスケテー'
    cv:          '久保ユリカ'
    irc_color:   'green'
    cyalume_rgb: 'rgb050' # 緑 RGB 0, 255, 0
    image_rgb:   'rgb050' # 緑 RGB 0, 255, 0


