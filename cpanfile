requires 'perl', '5.10.0';

requires 'Scalar::Util';
requires 'Term::ANSIColor';
requires 'YAML::Syck';
on 'test' => sub {
    requires 'Test::More', '0.98';
};

on 'develop' => sub {
    requires  'Minilla';
};
