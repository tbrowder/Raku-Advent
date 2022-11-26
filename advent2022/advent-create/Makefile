.PHONY: verbose quiet

YEAR  := 2022
TODIR := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)/code
ADIR  := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)

ART1 := $(ADIR)/advent-create/article1.rakudoc
#ART2 := article2.rakudoc
#ART3 := article3.rakudoc
#ART4 := article4.rakudoc

all: art1
#all: art1 art2 art3 art4

#advent-highlighter.raku --wrap --multi fancy-advent2.md > fancy-advent2.html

art1:
	raku --doc=Markdown $(ART1)                             > $(ADIR)/tbrowder.md
	cp $(ADIR)/tbrowder.md    $(TODIR)
	(cd $(TODIR); git commit . -m"save work"; git push)
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
