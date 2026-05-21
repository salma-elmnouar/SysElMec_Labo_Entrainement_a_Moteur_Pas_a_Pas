TEX=main

.PHONY: pdf clean

pdf:
	pdflatex -interaction=nonstopmode $(TEX).tex
	pdflatex -interaction=nonstopmode $(TEX).tex

clean:
	-del /Q $(TEX).aux $(TEX).fdb_latexmk $(TEX).fls $(TEX).idx $(TEX).lof $(TEX).lot $(TEX).log $(TEX).nlo $(TEX).out $(TEX).toc 2>nul
