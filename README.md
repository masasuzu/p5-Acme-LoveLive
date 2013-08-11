# NAME

Acme::LoveLive - It's new $module

# SYNOPSIS

    use utf8;
    use Acme::LoveLive::μ's;
    for my $member (Acme::LoveLive::μ's->members) {
        say encode_utf8($member->colorize(sprintf('%s: %s', $member->name, $member->call)));
        say encode_utf8($member->colorize_by_cylume(sprintf('%s: %s', $member->name, $member->call)));
    }



# DESCRIPTION

Acme::LoveLive is ...

# LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

SUZUKI Masashi <m15.suzuki.masashi@gmail.com>
