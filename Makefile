TEXFILE = thesis.tex
PDFFILE = $(TEXFILE:.tex=.pdf)
DEPFILES = $(wildcard *.tex)

.PHONY: $(PDFFILE) all clean

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE) $(DEPFILES)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" $(TEXFILE)
# for gnuplot support: latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode --shell-escape" $(TEXFILE)
# For LuaTex: latexmk -pdf -pdflatex="lualatex -interaction=nonstopmode" $(TEXFILE)

clean:
	latexmk -CA
	rm -f $(TEXFILES:.tex=.synctex.gz) $(TEXFILE:.tex=.bbl) $(TEXFILE:.tex=.tdo)
	rm -f generated/* plots/*.tex

