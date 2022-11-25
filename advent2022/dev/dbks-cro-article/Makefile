TODIR := /usr/local/git-repos/my-public-modules/raku-advent-extras/2022
PDF   := an-apache-cro-web-server.pdf
FILES := combine-pdfs.raku md2pod.raku pod2pdf.raku $(PDF)

all: copy

copy:
	cp $(FILES) $(TODIR)
	(cd $(TODIR); git commit . -m"save work"; git push)

build: pod pdf comb

pod:
	./md2pod.raku go

pdf:
	./pod2pdf.raku numbers

comb:
	./combine-pdfs.raku go
