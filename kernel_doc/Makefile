PAPER = kernel_main
TEX = $(wildcard *.tex)
#BIB = references.bib
FIGS = $(wildcard figures/*.pdf figures/*.png graphs/*.pdf graphs/*.png)

.PHONY: all clean

#$(PAPER).pdf: $(TEX) $(FIGS)  $(BIB)
$(PAPER).pdf: $(TEX) $(FIGS)  $(BIB)
	echo $(FIGS)
	latex $(PAPER)
#bibtex $(PAPER)
	latex $(PAPER)
	latex $(PAPER)
	dvips -P pdf -t letter ${PAPER}.dvi -o ${PAPER}.ps
	ps2pdf ${PAPER}.ps

clean:
	rm *.lof *.aux *.log *.toc *.lof *.pdf *.lot *.dvi *.ps *.bbl \
    *.out *.blg
