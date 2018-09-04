.PHONY: thesis presentation all clean

all: thesis presentation clean

thesis: thesis.tex
	pdflatex --shell-escape thesis.tex
	#makeindex thesis
	#makeglossaries thesis
	biber thesis
	pdflatex --shell-escape thesis.tex
	pdflatex --shell-escape thesis.tex

presentation:
	xelatex presentation.tex

clean:
	latexmk -c
	rm -f *~ *.dvi *.log *.bak *.aux *.toc *.ps *.eps *.blg *.bbl
	rm -f *.glg *.glo *.gls *.idx *.ild *.ind *.ist *.ilg *.iso *.out
	rm -f *.acn *.acr *.alg *.xdy *.vrb *.pstex *.pstex_t *.run.xml
	rm -f *.bbl *.nav *.snm *.glsdefs *.bcf *.lof *.lot
	rm -rf _minted-*
