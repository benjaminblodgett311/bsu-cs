if [ "$#" -eq 1 ]; then
	file="$1"

	if [[ "$file" != *.md ]]; then
		echo "WARNING missing .md extension"
	fi

	md_file="${file%.*}"
else
	md_file="notes"
fi

echo "formatting markdown as PDF..."
pandoc "$md_file.md" -o "$md_file.pdf" --pdf-engine=xelatex
echo "finished"
echo "opening document in PDF viewer..."
evince "$md_file.pdf" &
