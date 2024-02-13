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
  \time 5/4 R1*5/4 | %001
  \time 4/4 R1*5
  \time 5/4 R1*5/4 |
  \time 4/4 R1*13 |
  \time 3/4 R1*3/4*7 |
  \time 5/8 R1*5/8*2 |
  \time 2/8 R1*2/8 |
  \once \override Hairpin.circled-tip = ##t
  \time 3/4 c'2.~\fermata\< \bar "||" %031
  \tempo 2=104
  \time 2/2 c2..\p c8~->\mf\> | %032
  c2.~ c8\pp r8 | %033
  r4 f2.~(\< | %034
  f1 | %035
  \time 3/2 g1~\mf g8 fis\< ees)\! r8 | %036
  \time 2/2 R1 | %037
  r8 aes8~\mp\< aes2.~ | %037
  \time 3/4 \after 2 \! aes2.\f\> | %038
  \time 2/2 r4 r8 d8~\p\> 2~ | %039
  d2\mf r4 e4~( | %040
  e1~\> | %041
  e4 cis,2.~\mp | %042
  \tuplet 5/4 { cis2\< a'8~\mf } a2~ | %043
  \after 2. \p a1)\> | %044
  \time 5/4 r4 \after 4 \< bes1~( | %045
  \time 2/2 bes4 b2.)\mf | %046
}
