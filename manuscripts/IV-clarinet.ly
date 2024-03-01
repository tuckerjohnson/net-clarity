% net-clarity project

\new Staff \with {

  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \sods
  fontSize = #-1
  \override StaffSymbol.staff-space = #(magstep -1)
  \consists Text_mark_engraver

}

%\transpose bes c'
\relative {

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
  \tempo 2=96
  \time 2/2 c2..\p c8~->\mf\> | %032
  c2.~ c8\pp r8 | %033
  r4 f2.~(\< | %034
  f1 | %035
  \time 3/2 g1~\mf g8 fis\< ees)\! r8 | %036
  \time 2/2 R1 | %037
  r8 aes8~\mp\< aes2.~ | %038
  \time 3/4 \after 2 \! aes2.\f\> | %039
  \time 2/2 r4 r8 d8~\p\> 2~ | %040
  d2\mf r4 e4~( | %041
  e1~\> | %042
  e4 cis,2.~\mp | %043
  \tuplet 5/4 { cis2\< a'8~\mf } a2~ | %044
  \after 2. \p a1)\> | %045
  \time 5/4 r4 \after 4 \< bes1~( | %046
  \time 2/2 bes4 b2.)\mf | %047
  r2 c8-.\f g-. a4~ | %048
  a4. d,8~(\> d4 aes) | %049
  \time 5/4 bes1\mp\> aes'8(\pp fes8 | %050
  \time 2/2 ees2.) r4 | %051
  f8[-.->\f r8 f8-.-> cis8]]-.-> r4 cis4~\> | %052
  \time 3/2 \after 2 \mp cis2. r4 r2^\markup { "molto rit." } | %053
  \time 2/2 r2 r2\fermata | %054
  r8 b'8~->\f b2~ b8 bes-. | %055
  a8-. b-. c2. | %056
  \time 5/4 ges8-. aes-. f1~ | %057
  \time 2/2 f4 g8-. e8~ e4 ees-> | %058
  d2~ d8 cis4.~ | %059
  cis1 | %060
  r2 r4 r8 c'8( |
  d bes aes ges~ ges4) r8 e'8( |
  g8 f4) ees4( des8 b' a-.) |

}
