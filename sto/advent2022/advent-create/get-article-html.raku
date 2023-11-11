#!/usr/bin/env raku

use Proc::Easier;

my $gist-url = "https://github.com/tbrowder/Raku-Advent/blob/master/advent2022/tbrowder.md";
my $get-url = "./raku-advent-md2html.raku";
my $out = "article.html";
my $cmd = "$get-url $gist-url $out";

if not @*ARGS {
    say "Usage: {$*PROGRAM.basename} go";
}

my $res = cmd $cmd;
say $res.out;

my @html = (slurp $out).lines;
my $html = "";
for @html {
    $html ~= $_;
}

my $hout = "artlicle-one-line.html";
spurt $hout, $html;
say "See single line file: $hout";
