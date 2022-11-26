YEAR  := 2022
ADIR  := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)

THISDIR := $(ADIR)/advent-create/dbks-cro-article

TODIR := /usr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)/code
PDF   := an-apache-cro-web-server.pdfusr/local/git-repos/my-public-modules/Raku-Advent/advent$(YEAR)

FILES := combine-pdfs.raku md2pod.raku pod2pdf.raku $(PDF)

all: copy

copy:
	cp $(FILES) $(TODIR)
	(cd $(TODIR); git commit . -m"save work"; git push)

build-all: pod pdf comb

pod:
	./md2pod.raku go

pdf:
	./pod2pdf.raku go

comb:
	./combine-pdfs.raku go numbers
