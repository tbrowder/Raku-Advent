#!/usr/bin/env raku

my $f = "/usr/local/git-repos/forks/advent/tools/raku-advent-md2html.raku";
my $f2 = $f;
say $f2;
$f2 ~~ s/\S+ "advent/tools/"//;
copy $f, $f2;
say $f2;



