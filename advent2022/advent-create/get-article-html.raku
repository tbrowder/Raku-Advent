#!/usr/bin/env raku

use Proc::Easier;

my $gist-url = "https://github.com/tbrowder/Raku-Advent/blob/master/advent2022/tbrowder.md";

my $get-url = "./raku-advent-md2html.raku";
my $out = "article.html";
my $cmd = "$get-url $gist-url $out";

my $res = cmd $cmd;
say $res.out;
