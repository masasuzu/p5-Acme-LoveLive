package Acme::LoveLive::Data;
use 5.10.0;
use strict;
use warnings;
use utf8;
use YAML::Syck;
use Data::Recursive::Encode;
$YAML::Syck::ImplicitUnicode = 1;

my $_instance;

sub instance {
    my ($class) = @_;
    $_instance //= do {
        my $data = LoadFile(*DATA);
        bless +{ __data => $data };
    };
}

*new = \&instance;

sub data   { shift->instance->{__data} }
sub group  { shift->instance->{__data}->{'group'}->{$_[0]} }
sub people { shift->instance->{__data}->{'person'}->{$_[0]} }


1;

__DATA__

---

person:
  AyaseEli: &AyaseEli
    name_ja:     '絢瀬絵里'
    first_name:  'eli'
    last_name:   'ayase'
    call:        'かしこい かわいい エリーチカ'
    cv:          '南條愛乃'
    irc_color:   'cyan'
    cyalume_rgb: 'rgb233' # パステルブルー RGB 87,  145, 173
    image_rgb:   'rgb344' # 水色           RGB 175, 223, 228

  TojoNozomi: &TojoNozomi
    name_ja:     '東條希'
    first_name:  'nozomi'
    last_name:   'tojo'
    call:        '希パワー注入 はい、ぷしゅー'
    cv:          '楠田亜衣奈'
    irc_color:   'purple'
    cyalume_rgb: 'rgb223' # バイオレット RGB 112, 93, 168
    image_rgb:   'rgb223' # バイオレット RGB 112, 93, 168

  YazawaNico: &YazawaNico
    name_ja:     '矢澤にこ'
    first_name:  'nico'
    last_name:   'yazawa'
    call:        'にっこにっこにー'
    cv:          '徳井青空'
    irc_color:   'pink'
    cyalume_rgb: 'rgb533' # ピンク             RGB 234, 145, 152
    image_rgb:   'rgb503' # ショッキングピンク RGB 255,   0, 153

  KosakaHonoka: &KosakaHonoka
    name_ja:     '高坂穂乃果'
    first_name:  'honoka'
    last_name:   'kosaka'
    call:        'ファイトだよ'
    cv:          '新田恵海'
    irc_color:   'orange'
    cyalume_rgb: 'rgb530' # オレンジ RGB 255, 153,   0
    image_rgb:   'rgb431' # 山吹色   RGB 239, 169,  42

  SonodaUmi: &SonodaUmi
    name_ja:     '園田海未'
    first_name:  'umi'
    last_name:   'sonoda'
    call:        'ラブアローシュート'
    cv:          '三森すずこ'
    irc_color:   'blue'
    cyalume_rgb: 'rgb023' # ブルー RGB  0, 111, 171
    image_rgb:   'rgb123' # 群青   RGB 70,  93, 170

  MinamiKotori: &MinamiKotori
    name_ja:     '南ことり'
    first_name:  'kotori'
    last_name:   'minami'
    call:        'ことりのおやつにするぞ(・8・)'
    cv:          '内田彩'
    irc_color:   'grey'
    cyalume_rgb: 'rgb555' # ホワイト RGB 240, 240, 240
    image_rgb:   'rgb222' # グレー   RGB 118, 118, 118

  NishikinoMaki: &NishikinoMaki
    name_ja:     '西木野真姫'
    first_name:  'maki'
    last_name:   'nishikino'
    call:        'でっしょー'
    cv:          'Pile'
    irc_color:   'red'
    cyalume_rgb: 'rgb401' # レッド RGB 224,  0,  42
    image_rgb:   'rgb511' # 朱色   RGB 239, 69,  74

  HoshizoraRin: &HoshizoraRin
    name_ja:     '星空凜'
    first_name:  'rin'
    last_name:   'hoshizora'
    call:        'にゃんにゃんにゃー'
    cv:          '飯田里穂'
    irc_color:   'yellow'
    cyalume_rgb: 'rgb552' # パステルイエロー RGB 255, 255, 102
    image_rgb:   'rgb144' # ターコイズ       RGB 64,  224, 208

  KoizumiHanayo: &KoizumiHanayo
    name_ja:     '小泉花陽'
    first_name:  'hanayo'
    last_name:   'koizumi'
    call:        'ダレカタスケテー'
    cv:          '久保ユリカ'
    irc_color:   'green'
    cyalume_rgb: 'rgb050' # 緑 RGB 0, 255, 0
    image_rgb:   'rgb050' # 緑 RGB 0, 255, 0

group:
  "μ's":
    - *AyaseEli
    - *TojoNozomi
    - *YazawaNico
    - *KosakaHonoka
    - *SonodaUmi
    - *MinamiKotori
    - *KoizumiHanayo
    - *HoshizoraRin
    - *NishikinoMaki

