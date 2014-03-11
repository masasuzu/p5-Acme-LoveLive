use strict;
use warnings;
use utf8;

use Encode;
use Acme::LoveLive;
use String::IRC;
use UnazuSan;

use List::AllUtils qw( shuffle );
my $maki = Acme::LoveLive->person('NishikinoMaki');

my $unazu_san = UnazuSan->new(
    host             => 'localhost',
    nickname         => 'maki-bot',
    join_channels    => [ encode_utf8("ラブライ部"), ],
    receive_commands => [qw(PRIVMSG NOTICE)],
);

$maki->add_phrases( qw(
    暇なのね
    はやくしごとしなさい
    そろそろ仕事したら?
    そろそろ真面目になった方が良いわ
));


$unazu_san->on_message(
    qr/\@(まき|真姫|マキ|maki)/ => sub {
        my ($receive, $match) = @_;
        my $color = $maki->irc_color();
        my $serifu = (shuffle($maki->phrases))[0];
        my $si = String::IRC->new(sprintf('@%s %s', $receive->from_nickname, $serifu))->$color;
        $receive->reply($si->stringify);
    },
);


$unazu_san->run;
