Welcome to the repository of AA group for Zpevnik ;-)

If you are new, please believe, that we are making it for absolutely no profit. Maybe for eternal glory or for the hearts of our fans. To get started, please use some Unix-based operating system which will free your mind. Done? OK, next step is some LaTeX distribution and we can say, that you are ready to use our package. Our system is based on the Songs LaTeX package (http://songs.sourceforge.net/) and we would like to thank its authors.

Instructions for Unix
=====================

Before installation
-------------------
You need following packages on $PATH of your system:
pdflatex - latex pdf compiler
lilypond-book - tool to compile lilypond tab files to tex

pdflatex should is part of package texlive in most linux distributions.
lilypond can be downloaded from http://lilypond.org/

Installation
------------
In terminal please write 'make install' which will install songs-2.17 into your folder and also compile all the songbooks.

Usage
-----
In terminal write 'make' or 'make <name of the songbook>' to compile the demanded songbook.
Write 'make clean' for erasing temporal files.


Available songbooks
--------------------
'ff' - FF songbook in development
'tabor' - songbook for Pikomat in development


Instructions for Windows
========================

Installation
------------
Download and install MiKTeX from http://miktex.org/download . If you already have MiKTeX or Tex Live, you can skip this.

Usage
-----
Run ff.bat . This should compile songbook and create output file FF.pdf .
