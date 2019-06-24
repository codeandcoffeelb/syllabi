all: devops.pdf frontend.pdf
devops.pdf: devops.bbl devops.tex
	pdflatex -file-line-error -interaction=nonstopmode devops.tex
devops.bbl: devops.aux
	bibtex devops
devops.aux: devops.tex bibliography.bib
	pdflatex -file-line-error -interaction=nonstopmode devops.tex
	pdflatex -file-line-error -interaction=nonstopmode devops.tex
frontend.pdf: frontend.bbl frontend.tex
	pdflatex -file-line-error -interaction=nonstopmode frontend.tex
frontend.bbl: frontend.aux
	bibtex frontend
frontend.aux: frontend.tex bibliography.bib
	pdflatex -file-line-error -interaction=nonstopmode frontend.tex
	pdflatex -file-line-error -interaction=nonstopmode frontend.tex
games.pdf: games.bbl games.tex
	pdflatex -file-line-error -interaction=nonstopmode games.tex
games.bbl: games.aux
	bibtex games
games.aux: games.tex bibliography.bib
	pdflatex -file-line-error -interaction=nonstopmode games.tex
	pdflatex -file-line-error -interaction=nonstopmode games.tex
clean:
	rm -f *.aux *.log *.pdf *.out *-blx.bib *.bbl *.blg *.run.xml
