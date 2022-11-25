unit module Subs;

use Pod::To::PDF::Lite;
use PDF::Lite;

# from github/pod-to-pdf/Pod-To-PDF-Lite-raku/
# method !paginate($pdf) {
sub paginate($pdf) is export {
    my $page-count = $pdf.Pages.page-count;
    my $font = $pdf.core-font: "Helvetica";
    my $font-size := 9;
    my $align := 'right';
    my $page-num;
    for $pdf.Pages.iterate-pages -> $page {
        my PDF::Content $gfx = $page.gfx;
        my @position = $gfx.width - $!margin, $!margin - $font-size;
        my $text = "Page {++$page-num} of $page-count";
        $gfx.print: $text, :@position, :$font, :$font-size, :$align;
        $page.finish;
    }
}
