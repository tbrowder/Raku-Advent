.PHONY: verbose quiet

YEAR := 2022

ADIR := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)

#ADIR := /usr/local/git-repos/forks/advent/raku-advent-2022/articles

ART1 := $(ADIR)/dev/article1.rakudoc
ART2 := article2.rakudoc
ART3 := article3.rakudoc
ART4 := article4.rakudoc

all: art1
#all: art1 art2 art3 art4

#raku --doc=Markdown article.pod > fancy-advent.md
#raku --doc=HTML     article2.pod > fancy-advent2.html
#raku --doc=HTML     article3.pod > fancy-advent3.html
#advent-highlighter.raku --wrap --multi fancy-advent2.md > fancy-advent2.html

art1:
	raku --doc=Markdown $(ART1)                             > tbrowder.md
	echo "See file tbrowder.md"


art2:
	raku --doc=Markdown article2.pod                        > fancy-advent2.md
	advent-highlighter.raku --wrap --multi fancy-advent2.md > fancy-advent2.html

art3:
	raku --doc=Markdown article3.pod                        > fancy-advent3.md
	advent-highlighter.raku --wrap --multi fancy-advent3.md > fancy-advent3.html
	@echo See fancy-advent3.*

art4:
	raku --doc=Markdown article4.pod                        > fancy-advent4.md
	advent-highlighter.raku --wrap --multi fancy-advent4.md > fancy-advent4.html
	@echo See fancy-advent4.*
