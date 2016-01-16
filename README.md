#Makefile for Latex
The first line of this make file defines the tex file name, which should be edited accordingly. 
	
	# specify the tex file name here without extension '.tex'
	TEXFILE=report
	
The second line of this make file defines the bib file name, which should be edited accordingly. 
	
	# specify the bib file name here without extension '.bib'
	BIBFILE=report
	
**Usage**

Clean the current folder

	# only clean the files sharing the same name with the tex file name
	make clean 	
	
	OR
	
	# clean all tex related files
	make clean-all
	
	
Compile with pdflatex tex->pdf

	# tex->pdf
	make pdflatex
	
Compile with dvipdf

	# tex->dvi->pdf
	make dvipdf
	
Compile with pspdf

	# tex->dvi->ps->pdf
	make pspdf	