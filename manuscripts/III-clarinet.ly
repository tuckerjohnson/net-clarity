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
\transpose bes c' \relative {
  \compressEmptyMeasures
  \numericTimeSignature
  \clef treble
  \tempo \markup { "Lento, poco rubato" } 4=50
  \time 5/4 R1*5/4 | %1
  \time 4/4 R1 | %2
  \time 5/4 R1*5/4*3 | %3
  \time 4/4 R1 | %6
  <<
    { \time 3/4 R1*3/4 \cueClefUnset | } %7
    \tag #'part  {
        \new CueVoice \relative {
          \cueClef "bass" \stemUp fis,8[\laissezVibrer cis']\laissezVibrer <gis'\laissezVibrer a>[ <b e,>]~ 4 \stemNeutral  |
        }
    }
  >>
  \resetRelativeOctave c

  \sectionLabel \markup { \box \number 8 }

  \omit Score.BarNumber
  \time 4/4 \clef treble d'4(\pp\< c2.~ | %8
  \undo \omit Score.BarNumber
  \time 3/4 c8)\mp r8 r4 r8 ees8~-> | %9
  \time 7/8 4. b4(\p\< e |
  \time 3/4 cis'2)\! r8 g8(\< |
  \time 7/8 a4. ges,2)\mp |
  \time 4/4 \pocAce r8\startTextSpan f4.~\p\< 8 ges8_( aes'4~ |
  aes8) r8 c,4~-> c8 b8~->\f \tuplet 3/2 { 8 d8_(\> g8\stopTextSpan } \bar "||"

  \sectionLabel \markup { \box \number 15 }

  \omit Score.BarNumber
  \tempo "Piu Mosso" 4=65
  fis'2~\mf 8) r8 r8 des8(\> |
  \undo \omit Score.BarNumber
  ees,1 |
  aes2.)\mp r8. f'16~(\mf |
  1\> |
  bes,1)\p |
  r2 a'2~(\mp |
  a4 e,2.) |
  \time 3/4 \rit gis,4.(\<\startTextSpan fis'8 \after 8 \stopTextSpan cis'4)\f \bar "||"

  \sectionLabel \markup { \box \number 23 }

  \omit Score.BarNumber
  \tempo "A tempo" 4=50
  r8 f,,4(\p ees8 bes'4~\< |
  \undo \omit Score.BarNumber
  8) a4( d8 g,[ c8~]\mf |
  8) r8 r8 b8( e,4~ |
  \time 4/4 e4) fis4.(\f cis'8~\> 8.[ ees16] |
  bes2)\mf aes4(\mp f4~ |
  2) r4 d'4~ |
  4 e,8[(\< g] a[ b] c4~\f \bar "||"

  \sectionLabel \markup { \box \number 30 }

  \omit Score.BarNumber
  \tempo \markup {
    \concat {
      \rhythm { \tuplet 3/2 { 8 } }
      " = "
      \rhythm { { 8 } }
    }
  } 4 = 75
  \time 7/4 1) r2. |
  \undo \omit Score.BarNumber
  R1*7/4*3 | \tag #'part  { \break }
  <<
    { \override Rest.staff-position = #0 \time 4/4 r2 r4 \tuplet 5/4 { r8. ees'16(\< aes) } | }
    \tag #'part  {
      \new CueVoice \relative {
        \stemUp \tuplet 3/2 { f'8 bes4~ } 16 a cis d e8 fis16 g b8 \stemNeutral s8 |
      }
    }
  >>
  \resetRelativeOctave c''
  \revert Rest.staff-position
  f'2.~\f 8 r8 |

  \sectionLabel \markup { \box \number 36 }

  \omit Score.BarNumber
  bes,1-- |
  \undo \omit Score.BarNumber
  r2 r4 \tuplet 3/2 { r8 r8 fis'8~\f } |
  fis2. r4 |
  R1 |
  cis2.--\mf r4 |
  b8(\mp e,~ 2\< g4~ |
  4) \tuplet 3/2 { c4( a d~\f\> } 4) |
  fis,2\! r8 f(\p bes,4~ |
  8)[\< c8]( a' d,~\> 2) |
  g8( ees~\mp 2) e4~ |
  e4. cis'8(\f gis8 b8~ 4) |
  fis16( a d,8~ 4) f(\startTextSpan ees8.) fes,16(\stopTextSpan |

  \sectionLabel \markup { \box \number 48 }

  \omit Score.BarNumber
  \tempo 4=50
  des'1)\> |
  \undo \omit Score.BarNumber
  \tempo \markup {
    \concat {
      \rhythm { \tuplet 3/2 { 8 } }
      " = "
      \rhythm { { 8 } }
    }
  } 4 = 75
  aes4(\mf bes2.~ |
  bes2~\> 8)\p r8 r4 |
  \time 3/4 r4 r4 r8 c8~\f |
  \time 4/4 c2.\> g4(\mp |
  \time 3/4 b2.~\< |
  \time 4/4 8)\mf r8 \molRit r4 \after 4. \stopTextSpan r2\startTextSpan |

  \sectionLabel \markup { \box \number 55 }

  \omit Score.BarNumber
  \tempo "A tempo" 4=50
  r8 f,8~(\pp^\markup { \tiny \italic "lontano; sotto voce" } 2. |
  \undo \omit Score.BarNumber
  des'2. ees4~ |
  8) r8 r4 r2 |
  R1 |
  \time 3/4 r4 bes2( |
  ges4 aes2) |
  R1*3/4 \tag #'part  { \pageBreak }

  \sectionLabel \markup { \box \number 62 }

  \omit Score.BarNumber
  <<
    {
      R1*3/4
      \undo \omit Score.BarNumber
      \time 4/4 R1
      \time 3/4 R1*3/4
      \time 4/4 R1
      \time 3/4 R1*3/4
      \time 4/4 R1
      \time 3/4 R1*3/4
      \time 4/4 R1
      \time 3/4 R1*3/4
      \time 4/4 R1 |
    }
    \tag #'part  {
      \new CueVoice \relative {
        ees,8[\laissezVibrer bes'8]\laissezVibrer f'8[\laissezVibrer c']\laissezVibrer g'8[\laissezVibrer <g\laissezVibrer d'>8]~ |
        \time 4/4 8\fermata f'8~ 2 f8 ees |
        \time 3/4 bes'2. |
        \time 4/4 r8 bes8~ 4 aes4. e8 |
        \time 3/4 b'2. |
        \time 4/4 fis4. cis'8~ 4. a8~ |
        \time 3/4 a2. |
        \time 4/4 r8 g8~ 4 d'2 |
        \time 3/4 c2. |
        \time 4/4 <ges, f' bes>2.\arpeggio <ees aes des>4 |
      }
    }
  >>

  \sectionLabel \markup { \box \number 72 }

  \omit Score.BarNumber
  \tuplet 3/2 { c8_(\p\<^\markup { \tiny \italic "blooming" } b' e~ } 4)\mf \tuplet 3/2 { g,8(\> d a~ } 4~\p |
  \undo \omit Score.BarNumber
  8) fis4( g8~ 4 cis4~ |
  \time 3/4 8)[ r16 des16(]\< aes'4 c,4 |
  \time 7/8 f bes d4.~\mf |
  \time 3/4 8) r8 b8(\> e, a,4~\! |
  \time 7/8 8) r8 aes'8([\> des,] ges,4.~\p |
  \time 3/4 8) r8 r4 r4 |
  \time 4/4 r8 d'8(\mf g,2) r4 |
  \time 5/4 r8 a8~ 2 r2 |
  ees'2~\p 8 r8 r2 |
  \time 4/4 r4 r8 bes8~(\mp\> 8 f4.~ |
  \time 5/4 8 c'8~\p 4) r4 r2 |
  r4 r4 e8_(\pp b'8~ b2)\fermata \bar "|."
}
