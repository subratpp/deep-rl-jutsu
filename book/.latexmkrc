# latexmk config for the book. Used by `latexmk` on the command line and by
# VS Code LaTeX Workshop (see ../.vscode/settings.json).
#
#   latexmk          build once     -> ../rl_book.pdf (repo root)
#   latexmk -pvc     watch mode: rebuild whenever any source file is saved
#   latexmk -c       remove auxiliary files (in build/)
#
# Auxiliary files (.aux, .log, .bbl, .synctex.gz, ...) go to build/ and are
# git-ignored; only the final PDF is written next to the repo README.

@default_files = ('rl_book.tex');
$pdf_mode      = 1;          # pdflatex
$aux_dir       = 'build';
$out_dir       = '..';
$bibtex_use    = 2;          # run bibtex when references.bib changes
$pdflatex      = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
