song = {
    \time 3/4
    a, e b\3 cis' e b\3 e a, fis a\3 d'2
}

\layout {
    indent = #0
    line-width = #100
}

\score {
  <<
    \new TabStaff {
        \override Stem #'transparent = ##t
        \override Beam #'transparent = ##t
        \song
    }
  >>
}
