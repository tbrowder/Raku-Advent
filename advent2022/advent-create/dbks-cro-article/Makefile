YEAR  := 2022
ADIR  := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)

THISDIR := $(ADIR)/advent-create/dbks-cro-article

TODIR := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)/code
PDF   := An-Apache-Cro-Web-Server.pdf
PDF2  := pdf-docs/An-Apache-Cro-Web-Server-Recipe.pdf

FILES := combine-pdfs.raku md2pod.raku pod2pdf.raku $(PDF) $(PDF2)

all: copy

copy:
	cp $(FILES) $(TODIR)
	(cd $(TODIR); git commit $(FILES) -m"save work"; git push)

build-all: pod pdf comb

pod:
	./md2pod.raku go

pdf:
	./pod2pdf.raku go

comb:
	./combine-pdfs.raku go numbers

pod1:
	./md2pod.raku           md=md-src/An-Apache-Cro-Web-Server-Recipe.md

pdf1:
	./pod2pdf.raku numbers pod=pod-src/An-Apache-Cro-Web-Server-Recipe.pod
