dates.pdf: dates.ms refs
	refer -e -p refs dates.ms | groff -ms -t -Tpdf > $@

clean:
	rm dates.pdf
