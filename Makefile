all:
	make ff
	make tabor
	make sous

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

sous:
	mkdir tmp/sous -p
	TEXINPUTS="Sous16:" pdflatex -output-directory tmp/sous Sous16/sous.tex
	./songidx tmp/sous/cbtitle.sxd tmp/sous/cbtitle.sbx
	TEXINPUTS="Sous16:" pdflatex -output-directory tmp/sous Sous16/sous.tex
	-mv tmp/sous/sous.pdf sous.pdf

watch:
	watchy -w songs,FF,Tabor,songs.sty,custom.sty -- make

watchff:
	watchy -w songs,FF,songs.sty,custom.sty -- make

watchsous:
	watchy -w songs,Sous16,songs.sty,custom.sty -- make sous

install:
	tar -zxf songs-2.17.tar.gz
	cd songs-2.17; ./configure; make
	cp songs-2.17/src/songidx/songidx .
	rm -rf songs-2.17
	make
