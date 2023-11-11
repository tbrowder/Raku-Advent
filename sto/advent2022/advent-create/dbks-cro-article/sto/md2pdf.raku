#!/bin/env raku

use Markdown::Grammar;

my $ofil1 = "Creating-a-Cro-App-Part1-by-Tony-O.pdf";
my $ofil2 = "Creating-a-Cro-App-Part2-by-Tony-O.pdf";

my %md = [
    "20220224-building-a-cro-app-part-1.md" => $ofil1,
    "20220923-building-a-cro-app-part-b.md" => $ofil2,
];

my $idx = 0;
for %md.kv -> $ifil, $ofil {
    # using pandoc
    #   pandoc -s -o output.pdf input.md
    my $exe  = "pandoc";
    my $args = "-s -o $ofil --pdf-engine=xelatex $ifil";
    run $exe, $args.words;
    say "See output pdf file: $ofil";
}
