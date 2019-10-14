TEXFILE = thesis.tex
PDFFILE = $(TEXFILE:.tex=.pdf)
DEPFILES = $(wildcard *.tex)
TXSCWLPATH = ~/.config/texstudio/completion/user

.PHONY: $(PDFFILE) all clean mrproper txs-autocompletion

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE) $(DEPFILES)
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" $(TEXFILE)
# for gnuplot support: latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode --shell-escape" $(TEXFILE)
# For LuaTex: latexmk -pdf -pdflatex="lualatex -interactive=nonstopmode" $(TEXFILE)

$(TXSCWLPATH)/%: %
	ln -s $(abspath $^) $@

# provides autocompletion support for TeXStudio
txs-autocompletion: $(TXSCWLPATH)/i4thesis.cwl $(TXSCWLPATH)/i4coverpage.cwl

clean:
	latexmk -CA
	rm -f $(TEXFILES:.tex=.synctex.gz) $(TEXFILE:.tex=.bbl) $(TEXFILE:.tex=.tdo)
	rm -f generated/* plots/*.tex

mrproper: clean
	rm -f $(TXSCWLPATH)/i4thesis.cwl
	rm -f $(TXSCWLPATH)/i4coverpage.cwl
