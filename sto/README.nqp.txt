Some problems (bugs?) with nqp:

	+ name without sigils sometimes go unreported

	+ varying results with test of env vars

	+ inconsistent use of 'nqp::' prefix versus no prefix (is there a
	  rule), perhaps it's because the nqp used inside rakudo gets
	  compiled


======================
Hints from Zoffix on running a module with local rakudo:

(step 12 from: https://github.com/rakudo/rakudo/blob/nom/docs/release_guide.pod)



git clone https://github.com/ugexe/zef
export PATH=`pwd`/install/bin:$PATH
cd zef; perl6 -Ilib bin/zef install .
cd ..
export PATH=`pwd`/install/share/perl6/site/bin:$PATH
zef install Inline::Perl5

======================
Jonathan's article on the Perl 6 debugger:

https://perl6advent.wordpress.com/2012/12/05/a-perl-6-debugger/

======================

Jonathan's Edument course on NQP (Rakudo and NQP Internals):

  http://edumentab.github.io/rakudo-and-nqp-internals-course/
