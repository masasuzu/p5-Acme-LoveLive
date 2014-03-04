package Acme::LoveLive;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";


1;
__END__

=encoding utf-8

=head1 NAME

Acme::LoveLive - All about Japanese School Idol animation.

=head1 SYNOPSIS

    use utf8;
    use Encode;
    use Acme::LoveLive::Group::μ's;
    for my $member (Acme::LoveLive::Group::μ's->members) {
        say encode_utf8('image:  '. $member->colorize(sprintf('%s: %s', $member->fullname_ja, $member->call)));
        say encode_utf8('cylume: '. $member->colorize_by_cylume(sprintf('%s: %s', $member->fullname_ja, $member->call)));
    }


=head1 DESCRIPTION

ラブライブ! is famous Japanese animation.
And μ's is School Idol group in ラブライブ!

This module, Acme::LoveLive, provides some usefull method  for μ's fan so called ラブライ部員.


=head1 LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

SUZUKI Masashi E<lt>m15.suzuki.masashi@gmail.comE<gt>

=cut

