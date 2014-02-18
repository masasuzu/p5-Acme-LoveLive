requires 'perl', '5.10.0';

requires 'Term::ANSIColor';
requires 'YAML::Syck';
on 'test' => sub {
    requires 'Test::More', '0.98';
};

