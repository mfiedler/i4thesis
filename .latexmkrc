# For gnuplot support: $pdflatex="pdflatex -interaction=nonstopmode -shell-escape"
# For LuaTex: $pdflatex="lualatex -interaction=nonstopmode"
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -shell-escape';
$pdf_mode=1;
$postscript_mode=0;
$dvi_mode=0;

add_cus_dep('gplt','tex', 0, 'makegnu2tex');
sub makegnu2tex {
    system("gnuplot \"$_[0].gplt\"") ;
}

$clean_ext .= 'xdy synctex.gz bbl tdo loa lol run.xml %R-blx.bib';
