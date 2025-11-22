all: dates.pdf numbers.pdf

dates.pdf: dates.ms refs
	refer -e -p refs dates.ms | groff -ms -t -Tpdf > $@
numbers.pdf: numbers.ms refs
	refer -e -p refs numbers.ms | groff -ms -t -Tpdf > $@

clean:
	rm dates.pdf numbers.pdf
