#!/bin/env raku

=begin pdf-config
=Config :head1 :font<Times-RomanBold> :size<16> :align<center>:
=Config :head2 :font<Times-RomanBold> :size<14> :align<center>:
=end pdf-config

say $=pod.gist;
