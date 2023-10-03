% river project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \phds
}
\relative {
  \numericTimeSignature
  \clef treble
  \tempo "Lento, poco rubato" 4=50
  \time 5/4 R1*5/4 |
  \time 4/4 R1 |
  \time 5/4 R1*5/4 |
  R1*5/4 |
  R1*5/4 |
  \time 4/4 R1 |
  \time 3/4 R1*3/4 |
  \time 4/4 d'4(\mp c2.~ |
  \time 3/4 c8) r8 r4 r8 dis8~ |
  \time 7/8 4. b4( e |
  \time 3/4 cis'2) r8 g8( |
  \time 7/8 a4. ges,2) |
  \time 4/4 r8 f4.~ 8 ges8( aes'4~ |
  aes8) r8 c,4~-> c8 b8~-> \tuplet 3/2 { 8 d8( g8 } |
  fis'2~ 8) r8 r8 des8( |
  ees,1 |
  aes2.) r16 f'8.~( |
  1 |
  bes,1) |
  r2 a'2~( |
  a4 e,2.) |
  \time 3/4 gis,4.( fis'8 cis'4) |
  r8 f,,4( ees8 bes'4~ |
  8) a4( d8 g,[ c8~] |
  8) r8 r8 b8( e,4~ |
  \time 4/4 e4) fis4.( cis'8~ 8.[ ees16] |
  bes2) aes4( f4~ |
  2) r4 d'4~ |
  4 e,8[( g] a[ b] c4) |
}
