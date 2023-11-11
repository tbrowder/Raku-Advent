#!/bin/env raku

use Markdown::Grammar;

my $test-str = q:to/HERE/;
line1
HERE

my $mdfil = "/tmp/t.md";
spurt $mdfil, $test-str;

my $text = slurp $mdfil;
say $text;
my @pod-strs = from-markdown($text, to => 'pod6').lines;
say "====";
say $_ for @pod-strs;
say "====";
@pod-strs.shift;
say "====";
say $_ for @pod-strs;
say "====";
@pod-strs.unshift: "=begin pod";
say $_ for @pod-strs;

=finish

    # correct error in output
    shift @pod-strs;
    @pod-strs.unshift: "=begin pod\n";
    my $pod-str = @pod-strs.join("\n");
    spurt $pod-fil, $pod-str;
    say "See output pod file: $pod-fil";
