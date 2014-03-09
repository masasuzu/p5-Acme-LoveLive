# NAME

Acme::LoveLive - All about Japanese School Idol animation.

# SYNOPSIS

    use utf8;
    use Encode;
    use Acme::LoveLive;
    for my $member (Acme::LoveLive::Group::μ's->members) {
        say encode_utf8('image:  '. $member->colorize(sprintf('%s: %s', $member->fullname_ja, $member->call)));
        say encode_utf8('cylume: '. $member->colorize_by_cylume(sprintf('%s: %s', $member->fullname_ja, $member->call)));
    }

# DESCRIPTION

ラブライブ! is famous Japanese animation.
And μ's is School Idol group in ラブライブ!

This module, Acme::LoveLive, provides some usefull method  for μ's fan so called ラブライ部員.

# LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

SUZUKI Masashi <m15.suzuki.masashi@gmail.com>
