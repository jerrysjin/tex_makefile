# specify the tex file name here without extension '.tex'
TEXFILE=report

default:
	@echo "Enter one of the following:"
	@echo "Compile bibliography"
	@echo "  - make bib                 compile bibliography"
	@echo "Compile both tex files and bibliography"
	@echo "  - make pdflatex-full       compile using pdflatex -> pdf"
	@echo "  - make dvipdf-full         compile using latex -> dvipdfm -> pdf"
	@echo "  - make pspdf-full          compile using latex -> dvips -> ps2pdf -> pdf"
	@echo "Compile tex files"
	@echo "  - make pdflatex            compile using pdflatex -> pdf"
	@echo "  - make dvipdf              compile using latex -> dvipdfm -> pdf"
	@echo "  - make pspdf               compile using latex -> dvips -> ps2pdf -> pdf"
	@echo "Clean current directory"
	@echo "  - make clean               clean related files"
	@echo "  - make clean-all           clean this directory"

clean:
	rm -f ${TEXFILE}.{ps,pdf,log,aux,out,dvi,bbl,blg}

clean-all:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *.pdf *~

# compile pdf using pdflatex -> pdf
pdflatex-full:
	pdflatex $(TEXFILE) 
	bibtex $(TEXFILE)
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)

pdflatex:
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)

# compile pdf using latex -> dvi -> pdf
dvipdf-full:
	latex $(TEXFILE)
	bibtex $(TEXFILE)
	latex $(TEXFILE)
	latex $(TEXFILE)
	dvipdfm $(TEXFILE).dvi

dvipdf:
	latex $(TEXFILE)
	latex $(TEXFILE)
	dvipdfm $(TEXFILE).dvi

# compile pdf using latex -> dvi -> ps -> pdf
pspdf-full:
	latex $(TEXFILE)
	bibtex $(TEXFILE)
	latex $(TEXFILE)
	latex $(TEXFILE)
	dvips $(TEXFILE).dvi
	ps2pdf $(TEXFILE).ps

pspdf:
	latex $(TEXFILE)
	latex $(TEXFILE)
	dvips $(TEXFILE).dvi
	ps2pdf $(TEXFILE).ps

# compile bibliography
bib:
	bibtex $(TEXFILE)