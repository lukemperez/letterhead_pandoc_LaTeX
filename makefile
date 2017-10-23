PDFS := $(patsubst %.md,%.pdf,$(wildcard *.md))

all : $(PDFS)

## Location of pandoc support files

PREFIX = /Users/lmp/Dropbox/AcademicWork/Pandoc_Templates

## Pandoc Options

PANOPTS = --latex-engine=xelatex

TEMPLATE = --template=coverletter.tex


# Pandoc Commands via Make

%.pdf : %.md
	pandoc -s -S $(PANOPTS) $(TEMPLATE) $< -o $@

clean :
	rm $(PDFS)

rebuild : clean all

.PHONY : clean rebuild
