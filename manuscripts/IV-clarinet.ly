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
  \tempo \markup { "Giusto e giocoso" } 4=104
  \time 5/4 R1*5/4 |
  \time 4/4 R1*5
  \time 5/4 R1*5/4 |
  \time 4/4 R1*13 |
  \time 3/4 R1*3/4*7 |
  \time 5/8 R1*5/8*2 |
  \time 2/8 R1*2/8 |


}
