# For gnuplot support: $pdflatex="pdflatex -synctex=1 -interaction=nonstopmode -halt-on-error -shell-escape";
# For LuaTex: $pdflatex="lualatex -synctex=1 -interaction=nonstopmode -halt-on-error";
# You can mix lualatex, synctex and shellescape if you wish
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -halt-on-error';
$pdf_mode=1;
$postscript_mode=0;
$dvi_mode=0;

add_cus_dep('gplt','tex', 0, 'makegnu2tex');
sub makegnu2tex {
    system("gnuplot \"$_[0].gplt\"") ;
}

$clean_ext .= 'xdy synctex.gz bbl tdo loa lol run.xml %R-blx.bib';
