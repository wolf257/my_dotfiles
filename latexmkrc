$pdf_previewer = 'open -a Skim';

$pdflatex = 'lualatex -file-line-error %O %S';
$pdf_mode = 1;


# $pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
@generated_exts = (@generated_exts, 'synctex.gz');
# latexmk -pdflatex=lualatex -pdf <texfile>

$clean_ext = "bbl nav out snm aux toc";