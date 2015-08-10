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
