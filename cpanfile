requires 'perl', '5.008001';

requires 'Term::ANSIColor';
on 'test' => sub {
    requires 'Test::More', '0.98';
};

