# NAME

Acme::LoveLive - All about Japanese School Idol animation.

# SYNOPSIS

    use utf8;
    use Acme::LoveLive;
    binmode STDOUT, 'utf8';


    for my $member (Acme::LoveLive::Unit::μ's->members) {
        say 'image:  '. $member->colorize(sprintf('%s: %s', $member->fullname_ja, $member->call));
        say 'cylume: '. $member->colorize_by_cylume(sprintf('%s: %s', $member->fullname_ja, $member->call));
    }

# DESCRIPTION

ラブライブ! is famous Japanese animation.
And μ's is School Idol unit in ラブライブ!

This module, Acme::LoveLive, provides some usefull method  for μ's fan so called ラブライ部員.

# LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

SUZUKI Masashi <m15.suzuki.masashi@gmail.com>
