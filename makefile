# specify the tex file name here without extension '.tex'
TEXFILE=report

# specify the bib file name here without extension '.bib'
BIBFILE=report

default:
	@echo "Enter one of the following:"
	@echo "  make pdflatex            compile using pdflatex -> pdf"
	@echo "  make dvipdf              compile using latex -> dvipdfm -> pdf"
	@echo "  make pspdf               using latex -> dvips -> ps2pdf -> pdf"
	@echo "  make clean               clean related files"
	@echo "  make clean-all           clean this directory"

clean:
	rm -f ${TEXFILE}.{ps,pdf,log,aux,out,dvi,bbl,blg}

clean-all:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *.pdf *~

# compile using pdflatex -> pdf
pdflatex:
	pdflatex $(TEXFILE) 
	bibtex $(BIBFILE)
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)

# compile using latex -> dvi -> pdf
dvipdf:
	latex $(TEXFILE)
	bibtex $(BIBFILE)
	latex $(TEXFILE)
	latex $(TEXFILE)
	dvipdfm $(TEXFILE).dvi

# compile using latex -> dvi -> ps -> pdf
pspdf:
	latex $(TEXFILE)
	bibtex $(BIBFILE)
	latex $(TEXFILE)
	latex $(TEXFILE)
	dvips $(TEXFILE).dvi
	ps2pdf $(TEXFILE).ps
