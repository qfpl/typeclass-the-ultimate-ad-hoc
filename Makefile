all: slides

SLIDES_TEX = slides.tex
SLIDES_PDF = slides.pdf

slides: 
	pdflatex $(SLIDES_TEX)
	pdflatex $(SLIDES_TEX)
	pdflatex $(SLIDES_TEX)

spell: $(SLIDES_TEX)
	aspell check -len_GB $(SLIDES_TEX)

open: slides
	xdg-open $(SLIDES_PDF)

edit: $(SLIDES_TEX)
	vim $(SLIDES_TEX)

o: open

clean:
	rm -rf *.pdf *.loc *.toc *.log *.idx *.aux *.out *.nav *.snm *.vrb *.blg *.bbl

