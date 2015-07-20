requires 'Encode';
requires 'Term::ANSIColor';
requires 'YAML::Syck';
requires 'feature';
requires 'parent';

on configure => sub {
    requires 'Module::Build';
    requires 'perl', '5.10.0';
};

on test => sub {
    requires 'Test::More';
};
