package Acme::LoveLive;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";


1;
__END__

=encoding utf-8

=head1 NAME

Acme::LoveLive - It's new $module

=head1 SYNOPSIS

    use Acme::LoveLive::μ's;
    for my $member (Acme::LoveLive::μ's->members) {
        say encode_utf8($member->colorize(sprintf('%s: %s', $member->name, $member->call)));
    }


=head1 DESCRIPTION

Acme::LoveLive is ...

=head1 LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

SUZUKI Masashi E<lt>m15.suzuki.masashi@gmail.comE<gt>

=cut

