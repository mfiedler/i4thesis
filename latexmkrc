$pdflatex = 'pdflatex --shell-escape %O %S';
$pdf_mode=1;
$postscript_mode=0;
$dvi_mode=0;

$latex_default_switches = '-shell-escape';

add_cus_dep('gplt','tex', 0, 'makegnu2tex');
sub makegnu2tex {
    system("gnuplot \"$_[0].gplt\"") ;
}

