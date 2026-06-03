.PHONY: all clean view

all: main.pdf

main.pdf: main.tex
	pdflatex -interaction=nonstopmode main.tex > /dev/null 2>&1
	@echo "✅ Compilation réussie: main.pdf"

view: main.pdf
	open main.pdf

clean:
	rm -f main.aux main.log main.out main.synctex.gz main.toc main.fls main.fdb_latexmk

help:
	@echo "Commandes disponibles:"
	@echo "  make          - Compiler le fichier"
	@echo "  make view     - Compiler et ouvrir le PDF"
	@echo "  make clean    - Supprimer les fichiers temporaires"
