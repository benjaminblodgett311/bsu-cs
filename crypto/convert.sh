#!/bin/bash

src="week3.md"; out="$(basename "$filename" .md).pdf"; 
pandoc -o $out $src --pdf-engine=pdflatex -V geometry:margin=1in -H <(echo "\\usepackage{xcolor}\\usepackage{amsmath}") && firefox $out 2>/dev/null
