
build:
	cd ../mash && make html
	make copy

copy:
	mkdir -p docs
	rm -rf docs/static
	cp -r ../mash/docs/build/html/* docs/
	# omit source code
	rm -rf docs/_sources
	mv docs/_static docs/static
	# rename folder "static"
	find docs -name '*.html' -type f -exec sed -i '' 's/_static/static/g' {} \;
