index.md: index.tmpl index.yaml
	pandoc --template "$<" \
		-f markdown \
		-t markdown_github \
		$(lastword $^) | \
		sed 's/\\\_/_/g' \
		>"$@"
