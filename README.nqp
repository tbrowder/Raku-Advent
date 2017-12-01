Some problems (bugs?) with nqp:

	+ name without sigils sometimes go unreported

	+ varying results with test of env vars

	+ inconsistent use of 'nqp::' prefix versus no prefix (is there a
	  rule), perhaps it's because the nqp used inside rakudo gets
	  compiled


Hints from Zoffix on running a module with local rakudo:

git clone https://github.com/ugexe/zef
export PATH=`pwd`/install/bin:$PATH
cd zef; perl6 -Ilib bin/zef install .
cd ..
export PATH=`pwd`/install/share/perl6/site/bin:$PATH
zef install Inline::Perl5
