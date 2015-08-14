package Acme::LoveLive;
use 5.10.0;
use strict;
use warnings;
use utf8;
use Encode;
use Acme::LoveLive::Character;
use Acme::LoveLive::Unit;

our $VERSION = "1.01";

sub character {
    my ($class, $fullname) = @_;
    return "Acme::LoveLive::Character::$fullname"->instance;
}

sub unit {

    my ($class, $unit_name) = @_;
    state $NORMALIZE_PROJECT = +{
        'A-RISE'     => 'A_RISE',
        'lily white' => 'lily_white',
    };

    $unit_name = $NORMALIZE_PROJECT->{$unit_name} if exists $NORMALIZE_PROJECT->{$unit_name};

    return "Acme::LoveLive::Unit::$unit_name";
}

1;
__END__

=encoding utf-8

=head1 NAME

Acme::LoveLive - All about Japanese School Idol animation.

=head1 SYNOPSIS

    use utf8;
    use Acme::LoveLive;
    binmode STDOUT, 'utf8';


    for my $member (Acme::LoveLive::Unit::μ's->members) {
        say 'image:  '. $member->colorize(sprintf('%s: %s', $member->fullname_ja, $member->call));
        say 'cylume: '. $member->colorize_by_cylume(sprintf('%s: %s', $member->fullname_ja, $member->call));
    }

=head1 DESCRIPTION

ラブライブ! is famous Japanese animation.
And μ's is School Idol unit in ラブライブ!

This module, Acme::LoveLive, provides some useful method  for μ's fan so called ラブライ部員.


=head1 LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

SUZUKI Masashi E<lt>m15.suzuki.masashi@gmail.comE<gt>

=cut

