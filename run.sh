#!/bin/sh

BASE=dmuthesis
#PDFreader=preview

rm ${BASE}.pdf *.aux *.lo? *.toc *.ind *.inx *.gls *.glo *.gz *.ist *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi *.xdv *.ps body/*.aux
xelatex -no-pdf --interaction=nonstopmode ${BASE}
bibtex ${BASE}
xelatex -no-pdf --interaction=nonstopmode ${BASE}
xelatex --interaction=nonstopmode ${BASE}

