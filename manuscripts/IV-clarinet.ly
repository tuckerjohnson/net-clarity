% net-clarity project

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
  \tempo 4=104
  \time 5/4 R1*5/4 |
  \time 4/4 R1*5
  \time 5/4 R1*5/4 |
  \time 4/4 R1*13 |
  \time 3/4 R1*3/4*7 |
  \time 5/8 R1*5/8*2 |
  \time 2/8 R1*2/8 |
  \tempo 2=104
  \time 2/2 c'1~\pp\< |
  1~\mp |
  1~ |
  2~ \tuplet 3/2 { 4 f,8~ } 4~ |
  1~ |
  1~ |
  8 g8( fis8 ees8-.) r2 |


}
