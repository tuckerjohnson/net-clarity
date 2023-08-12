% river project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \phds
}
\relative {
  \numericTimeSignature
  \clef treble
  \tempo Largo 2=92
  \time 2/2
  f'2--\p  f-- |
  f-- f--  |
  \time 3/2
  f-- \tuplet 3/2 { e4^( fis a,~ } 4  d,4~ |
  d1~  8 cis'8~ 8) r8 |
  \time 3/4
  r8 b''8~ \tuplet 3/2 { b4 b8( } \tuplet 3/2 { c8 g4~ }  |
  \time 5/8
  g8) aes( ees bes) r8 |
  \time 2/2
  f2~ \tuplet 3/2 { f4 (e fis } |
  a,1) |
}
