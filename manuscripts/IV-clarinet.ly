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
  \time 2/2 c'1~\fermata |
  \tempo 2=104
  c2.. c8~-> |
  c2.~ c8 r8 |
  r4 f2.~( |
  f1 |
  \time 3/2 g1~ g8 fis ees) r8 |
  \time 2/2 R1 |
  r8 aes8~ aes2.~ |
 \time 3/4 aes2. |
 \time 2/2 r4 r8 d8~ 2~ |
 d2 r4 e4~( |
 e1~ |
 e4 cis,2.~ |
 \tuplet 5/4 { cis2 a'8~ } a2~ |
 a1) |
 \time 5/4 r4 bes2~( bes2~ |
 \time 2/2 bes4 b2.) |
}
