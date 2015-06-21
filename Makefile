all:
	make ff

clean:
	-rm tmp -rf

ff:
	mkdir tmp/ff -p
	TEXINPUTS="FF:" pdflatex -output-directory tmp/ff FF/ff.tex
	./songidx tmp/ff/cbtitle.sxd tmp/ff/cbtitle.sbx
	TEXINPUTS="FF:" pdflatex -output-directory tmp/ff FF/ff.tex
	-mv tmp/ff/ff.pdf FF.pdf

tabor:
	mkdir tmp/tabor -p
	TEXINPUTS="Tabor:" pdflatex -output-directory tmp/tabor Tabor/tabor.tex
	./songidx tmp/tabor/cbtitle.sxd tmp/tabor/cbtitle.sbx
	TEXINPUTS="Tabor:" pdflatex -output-directory tmp/tabor Tabor/tabor.tex
	-mv tmp/tabor/tabor.pdf Tabor.pdf

install:
	tar -zxf songs-2.17.tar.gz
	cd songs-2.17; ./configure; make
	cp songs-2.17/src/songidx/songidx .
	rm -rf songs-2.17
	make
