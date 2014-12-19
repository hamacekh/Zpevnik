all:
	make ff

clean:
	-rm tmp -rf

ff:
	mkdir tmp -p
	TEXINPUTS="FF:" pdflatex -output-directory tmp FF/ff.tex
	./songidx tmp/cbtitle.sxd tmp/cbtitle.sbx
	TEXINPUTS="FF:" pdflatex -output-directory tmp FF/ff.tex
	-mv tmp/ff.pdf FF.pdf

install:
	tar -zxf songs-2.17.tar.gz
	cd songs-2.17; ./configure; make
	cp songs-2.17/src/songidx/songidx .
	rm -rf songs-2.17
	make
