
build:
	cd ../mash && make html
	make copy

copy:
	cp -r ../mash/docs/build/html docs
