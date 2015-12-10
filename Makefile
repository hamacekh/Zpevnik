all:
	make ff
	make tabor

clean:
	-rm tmp -rf

ff:
	mkdir tmp/ff -p
	lilypond-book -I FF --output tmp/ff FF/ff.tex
	cp songs.sty tmp/ff/songs.sty
	cp custom.sty tmp/ff/custom.sty
	cd tmp/ff;pdflatex ff.tex
	./songidx tmp/ff/cbtitle.sxd tmp/ff/cbtitle.sbx
	cd tmp/ff;pdflatex ff.tex
	-mv tmp/ff/ff.pdf FF.pdf
tabor:
	mkdir tmp/tabor -p
	TEXINPUTS="Tabor:" pdflatex -output-directory tmp/tabor Tabor/tabor.tex
	./songidx tmp/tabor/cbtitle.sxd tmp/tabor/cbtitle.sbx
	TEXINPUTS="Tabor:" pdflatex -output-directory tmp/tabor Tabor/tabor.tex
	-mv tmp/tabor/tabor.pdf Tabor.pdf

watch:
	watchy -w songs,FF,Tabor,songs.sty,custom.sty -- make

watchff:
	watchy -w songs,FF,songs.sty,custom.sty -- make

install:
	tar -zxf songs-2.17.tar.gz
	cd songs-2.17; ./configure; make
	cp songs-2.17/src/songidx/songidx .
	rm -rf songs-2.17
	make
