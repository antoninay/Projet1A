#!/bin/bash

# Script pour compiler main.tex avec pdflatex
cd "$(dirname "$0")"

echo "📄 Compilation de main.tex..."
pdflatex -interaction=nonstopmode main.tex > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "✅ Compilation réussie!"
    echo "📑 PDF généré: main.pdf"
    
    # Optionnel: ouvrir le PDF
    # open main.pdf
else
    echo "❌ Erreur lors de la compilation"
    echo "Relancer avec: pdflatex main.tex"
    exit 1
fi

# Nettoyage des fichiers temporaires
rm -f main.aux main.log main.out main.synctex.gz main.toc
echo "🧹 Fichiers temporaires supprimés"
