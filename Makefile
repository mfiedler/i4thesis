TEXFILE = thesis.tex
PDFFILE = $(TEXFILE:.tex=.pdf)
DEPFILES = $(wildcard *.tex)
TXSCWLPATH = ~/.config/texstudio/completion/user

.PHONY: $(PDFFILE) all clean mrproper txs-autocompletion

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE) $(DEPFILES)
	latexmk -pdf -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" $(TEXFILE)
# for gnuplot support: latexmk -pdf -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode --shell-escape" $(TEXFILE)
# For LuaTex: latexmk -pdf -pdflatex="lualatex -synctex=1 -interaction=nonstopmode" $(TEXFILE)

$(TXSCWLPATH)/%: %
	ln -s $(abspath $^) $@

# provides autocompletion support for TeXStudio
txs-autocompletion: $(TXSCWLPATH)/i4thesis.cwl $(TXSCWLPATH)/i4coverpage.cwl

clean:
	latexmk -CA
	rm -f $(TEXFILE:.tex=.synctex.gz) $(TEXFILE:.tex=.bbl) $(TEXFILE:.tex=.tdo) $(TEXFILE:.tex=.loa) $(TEXFILE:.tex=.lol) $(TEXFILE:.tex=.run.xml) $(TEXFILE:.tex=-blx.bib)
	rm -f generated/* plots/*.tex

mrproper: clean
	rm -f $(TXSCWLPATH)/i4thesis.cwl
	rm -f $(TXSCWLPATH)/i4coverpage.cwl
