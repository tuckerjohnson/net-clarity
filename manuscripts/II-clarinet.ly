% root = ../net-clarity.ly

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \sods
  fontSize = \clarinetFont
  \override StaffSymbol.staff-space = \clarinetMagstep
  \consists Text_mark_engraver
  \consists Mark_engraver
 }
%\transpose bes c'
\relative {
  \tempo "Vivace" 4=168
  \time 2/4 ces'4.\f ees8 | %001
  \time 6/8 bes'8-. r8 r8 c,4. | %002
  \time 3,2,2 7/8 d'4.\> a'8( cis8~\mp 4~ | %003
  \time 4/4 cis8) e,,,8 g'8-. r8 r8 aes,8~ aes4 | %004
  f''4. ges8 a,,4.\f bes8( | %005
  \time 6/8 f'8 d8-.) r8 c'4 e'8-. | %006
  \time 9/8 \grace s8 fis,,,4.(\p cis'4.) ees'8-. r8 r8 | %007
  \time 3/4 g-. r8 b4( aes8-.) c,,->~\f | %008
  \time 4/4 c8 des'8~ des4 bes'8-. r8 r8 a,~ | %009
  a8 e4 d''8-. aes,4\p ges' |%010
  \time 3,2 5/8 f'8-. r8 r8 ees,,,8(\< g8~ | %011
  \time 3/4 g8) b'8 f,4->\f ges'4 | %012
  g''8 bes,,,4 a'4 aes'8-. | %013
  \time 4/4 d,,,8\mp  e''4 c'8-. r8 cis,,4\< b'8 | %014
  ees'8--\f r8 f,,2\fermata\niente\< f4->\fp | %015

}
