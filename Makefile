
build:
	cd ../mash && make docs
	make copy

copy:
	mkdir -p docs
	rm -rf docs/*
	rm -rf docs/static
	cp -r ../mash/docs/build/html/* docs/
	# omit source code
	rm -rf docs/_sources
	rm -rf docs/_modules
	mv docs/_static docs/static
	# rename folder "static"
	find docs -name '*.html' -type f -exec sed -i '' 's/_static/static/g' {} \;
