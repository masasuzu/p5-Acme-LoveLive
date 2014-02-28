# NAME

Acme::LoveLive - All about Japanese School Idol animation.

# SYNOPSIS

    use utf8;
    use Acme::LoveLive::Group::μ's;
    for my $member (Acme::LoveLive::Group::μ's->members) {
        say $member->colorize(sprintf('%s: %s', $member->name, $member->call));
        say $member->colorize_by_cylume(sprintf('%s: %s', $member->name, $member->call));
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
