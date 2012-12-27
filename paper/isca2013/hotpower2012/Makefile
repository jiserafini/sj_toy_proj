default:
	latex hotpower12
	bibtex hotpower12
	latex hotpower12
	latex hotpower12
	dvips -t letter hotpower12.dvi -o hotpower12.ps
	ps2pdf hotpower12.ps
#	dvipdf -t letter hotpower12.dvi hotpower12.pdf
#	psnup -n 2 hotpower12.ps 
#	chmod 660 hotpower12.aux hotpower12.bbl hotpower12.blg hotpower12.log hotpower12.dvi hotpower12.ps hotpower12.pdf 

clean:
	rm hotpower12.aux hotpower12.bbl hotpower12.blg hotpower12.log hotpower12.dvi hotpower12.ps hotpower12.pdf 
