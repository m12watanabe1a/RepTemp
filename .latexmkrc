#!/usr/bin/env perl
$pdflatex = 'lualatex --synctex=1 --file-line-error --halt-on-error --interaction=nonstopmode %O %S';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$bibtex = 'upbibtex';
$pdf_mode = 1;