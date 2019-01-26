.PHONY: all

all: $(patsubst %.dot, %.svg, $(wildcard *.dot))

%.svg: %.dot
	twopi -Tsvg -o $@ $<

%.png: %.dot
	twopi -Tpng -o $@ $<

clean:
	-rm -f *.png
	-rm -f *.svg
