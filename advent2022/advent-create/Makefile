YEAR    := 2022
ADIR    := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)
THISDIR := $(ADIR)/advent-create
GITMSG  := update

ART1NAM := tbrowder.md
ART1SRC := $(ADIR)/advent-create/article1.rakudoc
ART1MD  := $(ADIR)/$(ART1NAM)

#ART2 := article2.rakudoc
#ART3 := article3.rakudoc
#ART4 := article4.rakudoc

all: art1
#all: art1 art2 art3 art4

#advent-highlighter.raku --wrap --multi fancy-advent2.md > fancy-advent2.html

art1:
	raku --doc=Markdown $(ART1SRC)                             > $(ART1MD)
	(cd $(ADIR); git commit $(ART1MD) -m"$(GITMSG)"; git push)
	echo "See file ../$(ART1NAM)"
