PAPER = isca2013_mobile
TEX = $(wildcard *.tex)
BIB = references.bib
FIGS = $(wildcard figures/*.pdf figures/*.png graphs/*.pdf graphs/*.png)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS) jpaper.cls
	echo $(FIGS)
	latex $(PAPER)
	bibtex $(PAPER)
	latex $(PAPER)
	latex $(PAPER)
	dvips -P pdf -t letter ${PAPER}.dvi -o ${PAPER}.ps
	ps2pdf ${PAPER}.ps

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf ${PAPER}.ps ${PAPER}.dvi *~
