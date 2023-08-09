% river project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \phds
}
\relative {
  \numericTimeSignature
  \clef treble
  \time 4/2
  f'2--\p  f-- f-- f--  |
  \time 3/2
  r2 e4( fis a,~ 16 d,8.~ |
  d1 cis'4) r4 |
}
