% net clarity project

\paper {
  line-width = 120
  first-page-number = -1
  footnote-separator-markup = \markup { \left-column { \vspace #0.5 \draw-line #'(6 . 0) } }
  print-page-number = ##f
  oddHeaderMarkup = \markup {
    \concat { \if \on-page #5 \oddhead }
    \concat { \if \on-page #7 \oddhead }
    \concat { \if \on-page #9 \oddhead }
    \concat { \if \on-page #11 \oddhead }
    \concat { \if \on-page #13 \oddhead }
    \concat { \if \on-page #15 \oddhead }
    \concat { \if \on-page #17 \oddhead }
    \concat { \if \on-page #19 \oddhead }
    \concat { \if \on-page #21 \oddhead }

  }
  evenHeaderMarkup = \markup {
    \concat { \if \on-page #4 \evhead }
    \concat { \if \on-page #6 \evhead }
    \concat { \if \on-page #8 \evhead }
    \concat { \if \on-page #10 \evhead }
    \concat { \if \on-page #12 \evhead }
    \concat { \if \on-page #14 \evhead }
    \concat { \if \on-page #16 \evhead }
    \concat { \if \on-page #18 \evhead }
    \concat { \if \on-page #20 \evhead }
    \concat { \if \on-page #22 \evhead }

  }
  oddFooterMarkup = \markup {
    \concat { \if \on-page #3 \fill-line { \null \xcr \null } }
    \concat { \if \on-page #5 \oddfoot }
    \concat { \if \on-page #7 \oddfoot }
    \concat { \if \on-page #9 \oddfoot }
    \concat { \if \on-page #11 \oddfoot }
    \concat { \if \on-page #13 \oddfoot }
    \concat { \if \on-page #15 \oddfoot }
    \concat { \if \on-page #17 \oddfoot }
    \concat { \if \on-page #19 \oddfoot }
    \concat { \if \on-page #21 \oddfoot }
    \concat { \if \on-page #23 \oddfoot }
  }
  evenFooterMarkup = \markup {
    \concat { \if \on-page #2 \evfoot }
    \concat { \if \on-page #4 \evfoot }
    \concat { \if \on-page #6 \evfoot }
    \concat { \if \on-page #8 \evfoot }
    \concat { \if \on-page #10 \evfoot }
    \concat { \if \on-page #12 \evfoot }
    \concat { \if \on-page #14 \evfoot }
    \concat { \if \on-page #16 \evfoot }
    \concat { \if \on-page #18 \evfoot }
    \concat { \if \on-page #20 \evfoot }
    \concat { \if \on-page #22 \evfoot }
  }

  #(set-paper-size "arch a")
  print-all-headers = ##t
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.9\in
  right-margin = 0.9\in
  indent = 0.75\in
  short-indent = 0\cm
  #(define fonts (set-global-fonts #:music "haydn" #:brace "haydn" #:roman "Junicode" #:sans "syne"))
  max-systems-per-page = #10
  system-system-spacing = #'((basic-distance . 10) (minimum-distance . 8) (padding . 12))
  score-system-spacing = #'((basic-distance . 2) (minimum-distance . 1) (padding . 0))
  last-bottom-spacing = #'((basic-distance . 5) (minimum-distance . 5) (padding . 0))
  tocTitleMarkup = \markup { \null }
  tocItemMarkup = \markup {
    \center-column {
      \fill-line {
        \left-column { \concat { "                                " "       " \bold \fromproperty #'toc:text } }
        \right-column { \concat { \fromproperty #'toc:page "                                " "       " } }
      }
    }
  }
}
