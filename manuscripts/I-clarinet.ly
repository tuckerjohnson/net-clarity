% net clarity project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \sods
  fontSize = #-1
  \override StaffSymbol.staff-space = #(magstep -1)
  \consists Text_mark_engraver
}
\transpose bes c' \relative {
  \numericTimeSignature
  \clef treble
  \tempo Largo 2=92
  \time 2/2
  f'2--\p  f-- |
  f-- f--  |
  \time 3/2
  f-- \tuplet 3/2 { e4( fis a,~ } 4  d,4~ |
  d1) r4 cis''4~ |
  \time 3/4
  8 b'8~ \tuplet 3/2 { b4 b8( } \tuplet 3/2 { c8 g4~ }  |
  \time 5/8
  g8) aes( ees bes) r8 |
  \time 2/2
  f2~ \tuplet 3/2 { f4 e( fis } |
  a,1)\fermata |
  a1-- |
  d1--\fermata |
  cis'4( b') bes2 |
  \time 3/8
  \tuplet 3/2 { c8( g,4~ } 8~ |
  \time 1/4
  \tuplet 3/2 { g8 aes4) } |
  \time 2/2
  r2 \tuplet 3/2 { e4( fis a,~ } |
  a8) r8 r4 r2 |
  R1\fermata |
}
