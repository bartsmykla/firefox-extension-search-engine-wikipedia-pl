default: build/wikipedia-pl.xpi

build/wikipedia-pl.xpi: build/clean | build
	zip -r -9 build/wikipedia-pl.xpi manifest.json static

build:
	mkdir -p $@

.PHONY: build/clean
build/clean:
	rm -rf build/*
