# 引擎可切换: make ENGINE=pdflatex 或不加参数 (默认 xelatex, 有自动中英文间距)
ENGINE ?= xelatex
TEX=$(ENGINE) --synctex=1 -shell-escape -interaction=nonstopmode
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
