BASE = dmuthesis
PDFREADER=preview

pdf: 
	xelatex -no-pdf --interaction=nonstopmode ${BASE}
	xelatex -no-pdf --interaction=nonstopmode ${BASE}
	xelatex --interaction=nonstopmode ${BASE}

view: 
	${PDFREADER} ${BASE}.pdf


clean:
	rm -v *.aux *.log *.toc *.ind *.gls *.glo *.idx *.ilg *.out *.bbl *.thm *.blg *.lo? *.xdv body/*.aux
	rm ${BASE}.pdf


distclean: clean
	if [ -e ${BASE}.pdf ]; then rm ${BASE}.pdf; fi

