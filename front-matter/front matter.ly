% net clarity project

front-matter = \markuplist {

  \fill-line {
    \left-column {
      \line { \bold \xtitle " [2024]" }
      \line { \xinst " | " 20 minutes }
      \line { \xcomp }
      \vspace #25
    }

    \center-column {
      \vspace #3
      \override #'(x-padding . -10)
      \center-column { \table-of-contents }
      \vspace #2.25
      \override #'(thickness . 5) \draw-squiggle-line #0.5 #'(20 . 0) ##t
      \vspace #2.25
      \line { \hbracket \bold "program note" }
      \vspace #0.5
      \xpnote
      \vspace #2.25
      \override #'(thickness . 5) \draw-squiggle-line #0.5 #'(20 . 0) ##t
    }

    \column { \null }
  }
}
