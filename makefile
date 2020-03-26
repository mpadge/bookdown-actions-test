SCRIPT=build-script
TARGET=index

all: build 

build: $(SCRIPT).R
	Rscript $(SCRIPT).R

open: docs/$(TARGET).html
	xdg-open docs/$(TARGET).html &

clean:
	rm -r docs "bookdown ghactions test.rds"
