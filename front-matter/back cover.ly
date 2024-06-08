% river project


backcover = \markuplist { \fill-line {
  \line { \null }
  \center-column {
    \vspace #16
    \xbio
    \vspace #2
    \override #'(thickness . 5)
    \draw-squiggle-line #0.5 #'(20 . 0) ##t
    \vspace #2
    \override #'(line-width . 100)
    \justify \tiny \sans {
      This score was engraved on #(string-append (strftime "%m-%d-%Y"
      (localtime (current-time))) ",") using LilyPond version
      #(string-append (lilypond-version) ".") If you would like to view the
      most recent version of the input documents that generated it, visit
      \sans \bold \concat { "https://github.com/tuckerjohnson/" \xtitle "." }
    }
  }
  \line { \null }
  }
}
