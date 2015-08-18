song = {
    \time 3/4
    a, e cis' b\3 e'\1 d a fis' a d'\2 a, e cis'\2 b\3 e'\1 d a d'\2 fis' a d'\2
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
