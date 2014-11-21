all:
	make ff

clean:
	-rm tmp -rf

ff:
	mkdir tmp -p
	TEXINPUTS="FF:" pdflatex -output-directory tmp FF/ff.tex
	songidx tmp/cbtitle.sxd tmp/cbtitle.sbx
	TEXINPUTS="FF:" pdflatex -output-directory tmp FF/ff.tex
	-mv tmp/ff.pdf FF.pdf
