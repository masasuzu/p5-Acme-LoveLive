package Acme::LoveLive::Data;
use 5.10.0;
use strict;
use warnings;
use utf8;
use YAML::Syck;
$YAML::Syck::ImplicitUnicode = 1;

my $_instance;

sub instance {
    my ($class) = @_;
    $_instance //= do {
        my $data = LoadFile(*DATA);
        bless +{ __data => $data } => $class;
    };
}

*new = \&instance;

sub data   { shift->instance->{__data} }
sub group  { shift->data->{'group'}->{$_[0]} }
sub person { shift->data->{'person'}->{$_[0]} }


1;

__DATA__

---

person:
  AyaseEli: &AyaseEli
    fullname_ja:    '絢瀬絵里'
    first_name_en:  'eli'
    last_name_en:   'ayase'
    call:           'かしこい かわいい エリーチカ'
    cv:             '南條愛乃'
    irc_color:      'cyan'
    cyalume_rgb:    'rgb233' # パステルブルー RGB 87,  145, 173
    image_rgb:      'rgb344' # 水色           RGB 175, 223, 228

  TojoNozomi: &TojoNozomi
    fullname_ja:    '東條希'
    first_name_en:  'nozomi'
    last_name_en:   'tojo'
    call:           '希パワー注入 はい、ぷしゅー'
    cv:             '楠田亜衣奈'
    irc_color:      'purple'
    cyalume_rgb:    'rgb223' # バイオレット RGB 112, 93, 168
    image_rgb:      'rgb223' # バイオレット RGB 112, 93, 168

  YazawaNico: &YazawaNico
    fullname_ja:    '矢澤にこ'
    first_name_en:  'nico'
    last_name_en:   'yazawa'
    call:           'にっこにっこにー'
    cv:             '徳井青空'
    irc_color:      'pink'
    cyalume_rgb:    'rgb533' # ピンク             RGB 234, 145, 152
    image_rgb:      'rgb503' # ショッキングピンク RGB 255,   0, 153

  KosakaHonoka: &KosakaHonoka
    fullname_ja:    '高坂穂乃果'
    first_name_en:  'honoka'
    last_name_en:   'kosaka'
    call:           'ファイトだよ'
    cv:             '新田恵海'
    irc_color:      'orange'
    cyalume_rgb:    'rgb530' # オレンジ RGB 255, 153,   0
    image_rgb:      'rgb431' # 山吹色   RGB 239, 169,  42

  SonodaUmi: &SonodaUmi
    fullname_ja:    '園田海未'
    first_name_en:  'umi'
    last_name_en:   'sonoda'
    call:           'ラブアローシュート'
    cv:             '三森すずこ'
    irc_color:      'blue'
    cyalume_rgb:    'rgb023' # ブルー RGB  0, 111, 171
    image_rgb:      'rgb123' # 群青   RGB 70,  93, 170

  MinamiKotori: &MinamiKotori
    fullname_ja:    '南ことり'
    first_name_en:  'kotori'
    last_name_en:   'minami'
    call:           'ことりのおやつにするぞ(・8・)'
    cv:             '内田彩'
    irc_color:      'grey'
    cyalume_rgb:    'rgb555' # ホワイト RGB 240, 240, 240
    image_rgb:      'rgb222' # グレー   RGB 118, 118, 118

  NishikinoMaki: &NishikinoMaki
    fullname_ja:    '西木野真姫'
    first_name_en:  'maki'
    last_name_en:   'nishikino'
    call:           'でっしょー'
    cv:             'Pile'
    irc_color:      'red'
    cyalume_rgb:    'rgb401' # レッド RGB 224,  0,  42
    image_rgb:      'rgb511' # 朱色   RGB 239, 69,  74

  HoshizoraRin: &HoshizoraRin
    fullname_ja:    '星空凜'
    first_name_en:  'rin'
    last_name_en:   'hoshizora'
    call:           'にゃんにゃんにゃー'
    cv:             '飯田里穂'
    irc_color:      'yellow'
    cyalume_rgb:    'rgb552' # パステルイエロー RGB 255, 255, 102
    image_rgb:      'rgb144' # ターコイズ       RGB 64,  224, 208

  KoizumiHanayo: &KoizumiHanayo
    fullname_ja:    '小泉花陽'
    first_name_en:  'hanayo'
    last_name_en:   'koizumi'
    call:           'ダレカタスケテー'
    cv:             '久保ユリカ'
    irc_color:      'green'
    cyalume_rgb:    'rgb050' # 緑 RGB 0, 255, 0
    image_rgb:      'rgb050' # 緑 RGB 0, 255, 0

  # A-RISE
  KiraTsubasa: &KiraTsubasa
    fullname_ja:    '綺羅ツバサ'
    first_name_en:  'tsubasa'
    last_name_en:   'kira'
    cv:             '桜川めぐ'

  TodoErena: &TodoErena
    fullname_ja:    '統堂英玲奈'
    first_name_en:  'erena'
    last_name_en:   'todo'
    cv:             '松永真穂'

  YukiAnju: &YukiAnju
    fullname_ja:    '優木あんじゅ'
    first_name_en:  'anju'
    last_name_en:   'yuki'
    cv:             '大橋歩夕'

  # モブ
  Hideko: &Hideko
    fullname_ja:    'ヒデコ'
    first_name_en:  'hideko'
    cv:             '三宅麻理恵'

  Fumiko: &Fumiko
    fullname_ja:    'フミコ'
    first_name_en:  'fumiko'
    cv:             '山本希望'

  Mika: &Mika
    fullname_ja:    'ミカ'
    first_name_en:  'mika'
    cv:             '原沙友里'

  KosakaYukiho: &KosakaHonoka
    fullname_ja:    '高坂雪穂'
    first_name_en:  'yukiho'
    last_name_en:   'kosaka'
    cv:             '東山奈央'

  AyaseArisa: &AyaseArisa
    fullname_ja:    '綾瀬亜里沙'
    first_name_en:  'arisa'
    last_name_en:   'ayase'
    cv:             '佐倉綾音'



group:
  "μ's":
    member:
      AyaseEli:      *AyaseEli
      TojoNozomi:    *TojoNozomi
      YazawaNico:    *YazawaNico
      KosakaHonoka:  *KosakaHonoka
      SonodaUmi:     *SonodaUmi
      MinamiKotori:  *MinamiKotori
      KoizumiHanayo: *KoizumiHanayo
      HoshizoraRin:  *HoshizoraRin
      NishikinoMaki: *NishikinoMaki

  "A-RISE":
    member:
      KiraTsubasa:    *KiraTsubasa
      TodoErena:      *TodoErena
      YukiAnju:       *YukiAnju

