#!/bin/env raku

use Markdown::Grammar;

my $tstr1 = q:to/HERE/;
```json
{
  "name":        "Demo",
}
```
HERE
my $tstr2 = q:to/HERE/;
```json
{
}
```
HERE
my $tstr3 = q:to/HERE/;
```
{
}
```
HERE

for $tstr1, $tstr2, $tstr3 -> $md {
    my @pod = from-markdown($md, :to('pod6')).lines;
    say "====";
    say $_ for @pod;
    say "====";
}

=finish

@pod-strs.shift;
say "====";
say $_ for @pod-strs;

=finish
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
