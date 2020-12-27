sources=$(wildcard *.tex)
targets=$(sources:.tex=.pdf)

all: $(targets)

%.pdf: %.tex
	latexmk -pdf $<
	latexmk -c $<

.PHONY: clean

clean:
	rm $(targets)
