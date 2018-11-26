#!/usr/bin/env perl6
use LWP::Simple;

# put your original text in a github gist and put its URL here:
my $gist-url = "https://gist.github.com/tbrowder/9031f784170aca55722b473bf3b7f125";

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
