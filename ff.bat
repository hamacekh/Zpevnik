mkdir tmp
pdflatex --output-directory=tmp --include-directory=FF FF/ff.tex
songidx.exe tmp/cbtitle.sxd
pdflatex --output-directory=tmp --include-directory=FF FF/ff.tex
copy tmp\ff.pdf FF.pdf
rd /S /Q tmp