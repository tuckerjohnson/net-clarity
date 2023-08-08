%cowbell project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \phds
}
\relative {
  \numericTimeSignature
  \clef treble
  \time 7/2
  f'2  f f f r2 e4( fis a,~ 16 d,8.~ |
  \time 3/2
  d1 cis'4) r4 |
}
