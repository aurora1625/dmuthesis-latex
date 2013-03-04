del *.aux *.lo? *.toc *.ind *.inx *.gls *.glo *.gz *.ist *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi *.ps *.xdv body\*.aux back\*.aux front\*.aux
del dmuthesis.pdf
xelatex -no-pdf --interaction=nonstopmode dmuthesis
bibtex dmuthesis
xelatex -no-pdf --interaction=nonstopmode dmuthesis
xelatex --interaction=nonstopmode dmuthesis
