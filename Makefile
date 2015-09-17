TEXFILE = thesis.tex
PDFFILE = $(TEXFILE:.tex=.pdf)
DEPFILES = $(wildcard *.tex)

.PHONY: $(PDFFILE) all clean

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE) $(DEPFILES)
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" $(TEXFILE)
# For LuaTex: latexmk -pdf -pdflatex="lualatex -interactive=nonstopmode" $(TEXFILE)

clean:
	latexmk -CA
	rm -f $(TEXFILES:.tex=.synctex.gz) $(TEXFILE:.tex=.bbl) $(TEXFILE:.tex=.tdo)

