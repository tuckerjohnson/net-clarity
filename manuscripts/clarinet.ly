% river project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \phds
}
\relative {
  \numericTimeSignature
  \clef treble
  \time 2/2
  f'2--\p  f-- |
  f-- f--  |
  \time 3/2
  r2 \tuplet 3/2 { e4^( fis a,~ } 4  d,4~ |
  d1 cis'4) r4 |
  \time 3/4
  r4 r4 r4 |
  \time 5/8
  r4 r4 r8 |
  \time 2/2
  R1 |
}
