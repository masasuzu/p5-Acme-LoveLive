requires 'Encode';
requires 'Term::ANSIColor';
requires 'YAML::Syck';
requires 'parent';
requires 'perl', '5.10.0';

on configure => sub {
    requires 'Module::Build';
};

on test => sub {
    requires 'Test::More';
};
