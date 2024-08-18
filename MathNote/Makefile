TEX=pdflatex --synctex=1 -shell-escape -interaction=nonstopmode
ASY=asy

.PHONY: all view

all: MathNote.pdf

view:
	okular MathNote.pdf

MathNote.pdf: MathNote.tex MathNote.listing
	$(TEX) MathNote.tex
	$(ASY) MathNote-*.asy
	$(TEX) MathNote.tex
	rm -f *.out *.dvi *.aux
	okular MathNote.pdf&

clean:
	rm -f MathNote.pdf *.out *.dvi *.aux *.log
