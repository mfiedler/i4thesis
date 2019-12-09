TEXFILE = thesis.tex
PDFFILE = $(TEXFILE:.tex=.pdf)
DEPFILES = $(wildcard *.tex)
TXSCWLPATH = ~/.config/texstudio/completion/user

.PHONY: $(PDFFILE) all clean mrproper txs-autocompletion

all: $(PDFFILE)

# Options defined in ./.latexmkrc are used here, if you require --shell-escape or want to use another TeX-Engine,
# please see the comments there there.
$(PDFFILE): $(TEXFILE) $(DEPFILES)
	latexmk $(TEXFILE)

$(TXSCWLPATH)/%: %
	ln -s $(abspath $^) $@

# provides autocompletion support for TeXStudio
txs-autocompletion: $(TXSCWLPATH)/i4thesis.cwl $(TXSCWLPATH)/i4coverpage.cwl

clean:
	latexmk -C
	rm -f generated/* plots/*.tex

mrproper: clean
	rm -f $(TXSCWLPATH)/i4thesis.cwl
	rm -f $(TXSCWLPATH)/i4coverpage.cwl
