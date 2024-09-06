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
  \numericTimeSignature
  \tempo "Vivace" 4=144
  \time 5/8 ces'4\f ees8[ bes'] r8 |
  \time 4/4 \grace { ees,8( } c4) d' a'8( cis4.) |
  \grace { b,,8( } e,8) g' r8 aes,8~ aes f''4  \grace { ees'8( } ges,8) |
  \time 2/4 a,,4 \grace { g'8( } bes,8 f'
  \time 5/8 d4) c' e'8 |
  \time 3/4 \grace { a,,,8( } fis4  cis') ees'8 r8 |
  \time 5/8 g4 b( aes8) |
  \time 3/4 c,,4 des' bes'
  \time 5/8 a, e d''8 |
  \time 3/4 aes,4 \grace { a8( } ges'4) f' |
  \time 2/4 ees,,,8( g4) b'8 |
  \time 5/8 f,4 ges' g''8 |
  bes,,,4 a' aes'8[ |
  d,,,8] e''4 c' |
  \grace { a,8( } cis,4) \grace { e'8( } b8) ees'4 |
  \time 4/4 f,,2. r4 |

  \time 7/8 f4 des( aes4) d8 |
  \time 4/4 c'4 b'8 r8 bes,,8 a''4. |
  \time 7/8 ees4 \grace { aes,,8( } ges4) \grace { ees''8( } g8) e'8 r8 |
  \time 4/4 d,4( f8) cis' c,,4 \grace { f'8( } bes,4) |
  \grace { cis'8( } fis,8) r8 aes,,8 g'4 a'8 r8 \grace { gis,,8( } b8 |
  e,4) ees'8 d,8~ d8 b''4 c'8 |
  bes,,4 \grace { ees8( } des4~ des8) g' r8 \grace { des,8( } ges,8) |
  aes'4 ees''8 r8 f,,,8 a4 e''8~ |
  \time 6/8 e4. ees,,8 b' fis'' |
  \grace { b,,8( } e,8) cis'' a gis,4. |
  \time 2/4 r8  f'4 bes8 |
  \time 4/4 d8  r8 r4 r4 aes4( |
  \time 6/8 b2. |
  e4.) \breathe d,,8-. fis-. a-. |
  r8 bes( des f4 fis8) |
  ees'2. |
  \time 4/4 f,,8-. c''8( 2.) |
  \time 2/4 d,8( bes)-. a'4 |
  des,8-.->

}
