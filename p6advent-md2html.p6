#!/usr/bin/env perl6
use LWP::Simple;

#my $gist-url = 'https://gist.github.com/tbrowder/4d0091ca6ef87863e43e4b32fce640a7/';
my $gist-url = "https://github.com/tbrowder/Perl6-Advent/blob/master/p6advent-2017-12-08.md";

my $str = get-html($gist-url);

my $fil = 'advent.html';
spurt $fil, $str;
say "See output file '$fil'";

sub get-html($gist-url) {
    return LWP::Simple.get($gist-url)
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

=begin pod
#MAIN($gist-url);
# courtesy of ZoffixZnet:
sub MAIN ($gist-url) {
    put LWP::Simple.get($gist-url)
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
=end pod
