#Makefile for Latex
The first line of this make file defines the tex file name, which should be edited accordingly before compiling files. 
	
	# specify the tex file name here without extension '.tex'
	TEXFILE=report
	
**Usage**

This is used to generate pdf files from tex project.

Commands with the suffix '-full' indicate both tex and bibliography files will be compiled. Commands without it means only tex files will be compiled.  

Clean the current folder

	# only clean the files sharing the same name with the tex file name
	make clean 	
	
	OR
	
	# clean all tex related files
	make clean-all
	
	
Compile pdf using pdflatex

	make pdflatex
	make pdflatex-full
	
Compile pdf using latex -> dvipdfm

	make dvipdf
	make dvipdf-full
	
Compile pdf using latex -> dvips -> ps2pdf

	make pspdf
	make pspdf-full
	
Compile bibliography

	make bib