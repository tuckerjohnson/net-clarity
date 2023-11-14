% river project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \sods
}
\transpose bes c' \relative {
  \numericTimeSignature
  \clef treble
  \tempo \markup { "Lento, poco rubato;" \italic "calma" } 4=50
  \time 5/4 R1*5/4 |
  \time 4/4 R1 |
  \time 5/4 R1*5/4 |
  R1*5/4 |
  R1*5/4 |
  \time 4/4 R1 |
  \time 3/4 R1*3/4 |
  \time 4/4 d'4(\pp\< c2.~ |
  \time 3/4 c8)\mp r8 r4 r8 ees8~-> |
  \time 7/8 4. b4(\> e |
  \time 3/4 cis'2)\p r8 g8(\< |
  \time 7/8 a4. ges,2)\mp | \override TextSpanner.bound-details.left.text = \markup { \upright "Accel " }
  \time 4/4 r8\startTextSpan f4.~ 8 ges8_( aes'4~ |
  aes8) r8 c,4~-> c8 b8~-> \tuplet 3/2 { 8 d8_( g8\stopTextSpan } | \tempo "Piu Mosso" 4=65
  fis'2~ 8) r8 r8 des8( |
  ees,1 |
  aes2.) r16 f'8.~( |
  1 |
  bes,1) |
  r2 a'2~( |
  a4 e,2.) | \override TextSpanner.bound-details.left.text = \markup { \upright "Rit " }
  \time 3/4 gis,4.(\startTextSpan fis'8 cis'4)\stopTextSpan | \tempo "A tempo" 4=50
  r8 f,,4( ees8 bes'4~ |
  8) a4( d8 g,[ c8~] |
  8) r8 r8 b8( e,4~ |
  \time 4/4 e4) fis4.( cis'8~ 8.[ ees16] |
  bes2) aes4( f4~ |
  2) r4 d'4~ |
  4 e,8[( g] a[ b] c4~ |
  \tempo \markup {
    \concat {
      \rhythm { \tuplet 3/2 { 8 } }
      " = "
      \rhythm { { 8 } }
    }
  } 4 = 75
  \time 7/4 1) r2. |
  R1*7/4 |
  R1*7/4 |
  R1*7/4 |
  \time 4/4 r2 r4 \tuplet 5/4 { r8. ees''16( aes,) } |
  f'2.~ 8 r8 |
  bes,1 |
  R1 |
  fis'2.~ 8 r8 |
  R1 |
  cis2. r4 |
  b8( e,~ 2 g4~ |
  4) \tuplet 3/2 { c4( a d~ } 4) |
  fis,2~ 8 f( bes,4~ |
  8)[ c8]( a' d,~ 2) |
  g8( ees~ 2) e4~ |
  e4. cis'8( gis8 b8~ 4) |
  fis16(\startTextSpan a d,8~ 4) f( dis8.) e,16(\stopTextSpan | \tempo 4=50
  cis'1) |
  \tempo \markup {
    \concat {
      \rhythm { \tuplet 3/2 { 8 } }
      " = "
      \rhythm { { 8 } }
    }
  } 4 = 75
  aes4( bes2.~ |
  bes2~) 8 r8 r4 |
  \time 3/4 r4 r4 r8 c8~ |
  \time 4/4 c2. g4( |
  \time 3/4 b2.~ |
  \time 4/4 8) r8 r4 r2\startTextSpan | \tempo 4=50
  r8\stopTextSpan f,8~( 2. |
  cis'2. ees4~ |
  8) r8 r4 r2 |
  R1 |
  \time 3/4 r4 bes2( |
  fis4 gis2) |
  R1*3/4
  R1*3/4
  \time 4/4 R1
  \time 3/4 R1*3/4
  \time 4/4 R1
  \time 3/4 R1*3/4
  \time 4/4 R1
  \time 3/4 R1*3/4
  \time 4/4 R1
  \time 3/4 R1*3/4
  \time 4/4 R1 |
  \tuplet 3/2 { c8( b' e~ } 4) \tuplet 3/2 { g,8( d a~ } 4~ |
  8) fis4( g8~ 4 cis4~ |
  \time 3/4 8)[ r16 cis16(] aes'4 c,4 |
  \time 7/8 f bes d4.~ |
  \time 3/4 8) r8 b8( e, a,4~ |
  \time 7/8 8) r8 gis'8( cis, fis,8~ 4~ |
  \time 3/4 8) r8 r4 r4 |
  \time 4/4 r8 d'8( g,2. |
  \time 5/4 8 a8~ 2) r2 |
  dis2.~ 2 |
  \time 4/4 r4 r8 bes8~( 8 f4.~ |
  \time 5/8 8 c'8~ 2~ 2) |
  r4 r8 e8( b'2.) |
}
