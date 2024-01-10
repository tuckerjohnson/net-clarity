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
  \tempo \markup { "Lento, poco rubato" } 4=50
  \time 5/4 R1*5/4 | %1
  \time 4/4 R1 | %2
  \time 5/4 R1*5/4 | %3
  R1*5/4 | %4
  R1*5/4 | %5
  \time 4/4 R1 | %6
  \time 3/4 R1*3/4 | %7

  \sectionLabel \markup { \box \number 8 }

  \time 4/4 d'4(\pp\< c2.~ | %8
  \time 3/4 c8)\mp r8 r4 r8 ees8~-> | %9
  \time 7/8 4. b4(\> e |
  \time 3/4 cis'2)\p r8 g8(\< |
  \time 7/8 a4. ges,2)\mp |
  \time 4/4 r8^\markup { "poco accel." } f4.~\p\< 8 ges8_( aes'4~ |
  aes8) r8 c,4~-> c8 b8~->\f \tuplet 3/2 { 8 d8_(\> g8 } \bar "||"

  \sectionLabel \markup { \box \number 15 }

  \tempo "Piu Mosso" 4=65
  fis'2~\mf 8) r8 r8 des8(\> |
  ees,1 |
  aes2.)\mp r8. f'16~(\mf |
  1\> |
  bes,1)\p |
  r2 a'2~(\mp |
  a4 e,2.) |
  \time 3/4 gis,4.(\<^\markup { "rit." } fis'8 cis'4)\f \bar "||"

  \sectionLabel \markup { \box \number 23 }

  \tempo "A tempo" 4=50
  r8 f,,4(\p ees8 bes'4~\< |
  8) a4( d8 g,[ c8~]\mf |
  8) r8 r8 b8( e,4~ |
  \time 4/4 e4) fis4.(\f cis'8~\> 8.[ ees16] |
  bes2)\mf aes4(\mp f4~ |
  2) r4 d'4~ |
  4 e,8[(\< g] a[ b] c4~\f \bar "||"

  \sectionLabel \markup { \box \number 30 }

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
  \time 4/4 r2 r4 \tuplet 5/4 { r8. ees'16(\ff\> aes) } |
  f'2.~\mf 8 r8 |

  \sectionLabel \markup { \box \number 36 }

  bes,1-- |
  r2 r4 \tuplet 3/2 { r8 r8 fis'8~\f } |
  fis2. r4 |
  R1 |
  cis2.--\mf r4 |
  b8(\mp e,~ 2\< g4~ |
  4) \tuplet 3/2 { c4( a d~\f\> } 4) |
  fis,2\! r8 f(\p bes,4~ |
  8)[\< c8]( a' d,~\> 2) |
  g8( ees~\! 2) e4~ |
  e4. cis'8(\f gis8 b8~ 4) |
  fis16( a d,8~ 4) f(^\markup { "rit." } ees8.) fes,16( |

  \sectionLabel \markup { \box \number 48 }

  \tempo 4=50
  des'1\> |
  \tempo \markup {
    \concat {
      \rhythm { \tuplet 3/2 { 8 } }
      " = "
      \rhythm { { 8 } }
    }
  } 4 = 75
  aes4\mf bes2.~ |
  bes2~\> 8)\p r8 r4 |
  \time 3/4 r4 r4 r8 c8~\f |
  \time 4/4 c2.\> g4(\mp |
  \time 3/4 b2.~\< |
  \time 4/4 8)\mf r8 r4 r2^\markup { "molto rit." } |

  \sectionLabel \markup { \box \number 55 }

  \tempo "A tempo" 4=50
  r8 f,8~(\pp^\markup { \tiny \italic "lontano; sotto voce" } 2. |
  des'2. ees4~ |
  8) r8 r4 r2 |
  R1 |
  \time 3/4 r4 bes2( |
  ges4 aes2) |
  R1*3/4

  \sectionLabel \markup { \box \number 62 }

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

  \sectionLabel \markup { \box \number 72 }

  \tuplet 3/2 { c8_(\p\<^\markup { \tiny \italic "fioritura" } b' e~ } 4)\mf \tuplet 3/2 { g,8(\> d a~ } 4~\p |
  8) fis4( g8~ 4 cis4~ |
  \time 3/4 8)[ r16 des16(]\< aes'4 c,4 |
  \time 7/8 f bes d4.~\mf |
  \time 3/4 8) r8 b8(\> e, a,4~\! |
  \time 7/8 8)[ r8 aes'8(]\> des,[ ges,8~] 4~\p |
  \time 3/4 8) r8 r4 r4 |
  \time 4/4 r8 d'8(\mf g,2) r4 |
  \time 5/4 r8 a8~ 2 r2 |
  ees'2.\p r2 |
  \time 4/4 r4 r8 bes8~(\mp\> 8 f4.~ |
  \time 5/8 8 c'8~\p 2~ 2) |
  r4 r8 e8(\pp b'4~ b2)\fermata |
}
