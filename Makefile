TEX = aprs101-fr.tex
PDF = aprs101-fr.pdf
ENGINE = lualatex

all: $(PDF)

$(PDF): $(TEX) $(wildcard chapters/*.tex)
	$(ENGINE) -interaction=nonstopmode $(TEX)
	$(ENGINE) -interaction=nonstopmode $(TEX)

quick: $(TEX)
	$(ENGINE) -interaction=nonstopmode $(TEX)

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.fdb_latexmk *.fls *.synctex.gz
	rm -f chapters/*.aux

distclean: clean
	rm -f $(PDF)

.PHONY: all quick clean distclean
