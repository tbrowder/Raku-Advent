use Markdown::Grammar;
use MONKEY-SEE-NO-EVAL;

my $s = q:to/HERE/;
```json
{
}
```
HERE
my $p = from-markdown $s, to => 'pod6';
EVAL $p;
say $p;
