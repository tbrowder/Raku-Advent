#!/usr/bin/env perl6

my $f = shift @*ARGS;
my $md = slurp $f;

sub MAIN ($md) {
    put $md
        .comb(/'<article' <-[>]>+ '>' <(.+?)> '</article>'/)
        .subst(:g, 'class="pl-c"',   'style="color: #999;"')
        .subst(:g, 'class="pl-c1"',  'style="color: #449;"')
        .subst(:g, 'class="pl-k"',   'style="color: blue;"')
        .subst(:g, 'class="pl-pds"', 'style="font-weight: bold;"')
        .subst(:g, 'class="pl-s"',   'style="color: #994;"')
        .subst(:g, 'class="pl-smi"', 'style="color: #440;"')
        .subst(:g,
            '<pre>',
            '<pre style="font-size: 14px; font-family: monospace">'
        );
}
