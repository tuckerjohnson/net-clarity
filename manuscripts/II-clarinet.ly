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
  \tempo "Vivace" 4=168 \time 2/4 ces'4.\f ees8 | %001
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
  ees'8--\f r8 f,,2\niente\< f4->\ff | %015

  \sectionLabel \markup { \box \number 16 }
  \omit Score.BarNumber
  \time 3/4 des4(\psempre aes4) d8 c'8~ | \undo \omit Score.BarNumber %016
  c8 b'4 bes,,8 a''4~ | %017
  a8 ees4 ges,,4 g''8 | %018
  e'4 \breathe d,4( f8) des'8 | %019
  c,,4 bes'4 ges'4 | %020
  aes,,8 g'4 a'4 b,,8( | %021
  e,4) \breathe ees'8 d,4 b''8~ | %022
  b8 c'8 bes,,4 des4~ | %023
  des8 f'4 \breathe ges,,8 aes'4 | %024
  ees''4 f,,,8 a4 e''8~ | %025
  e4. ees,,8\< b'8 fis''8 | %026
  e,,8 cis''8 a8 gis,4.\f | %027
  r8 f'8 r8 bes8( d4~ | %028
  d4~ d8) r8 r8 aes'8~\mp | %029

  \sectionLabel \markup { \box \number 30 }
  \omit Score.BarNumber
  aes2. | \undo \omit Score.BarNumber %030
  e8( g8-.) r8 d,8--\f fis,8-.\mp\< a8-. | %031
  d8( des f)\f bes,8-. fis'8->-- b'8(\p | %032
  ees,2.) | %033
  f,,8-. c''8~\< c2~\f\> | %034
  c4 d,8-.\mp\< bes8( a4) | %035
  des8-.->\f g8-.->  des''8 ees,,,8( c'8) aes'-.-> | %036
  R1*3/4 | %037
  r4 r4 r8 e8-.-> | %038
  a'4(\p fis8) b,,8~(\< b8 g8~ | %039
  g4) ees'8-.->\mf cis''8-- e,,,8(\< gis8) | %040
  b'8-.->\f r8 r4 r4 | %041

  \sectionLabel \markup { \box \number 42 }
  \omit Score.BarNumber
  d'8(\> f,8~ f2~\pp\< | \undo \omit Score.BarNumber %042
  f8)\f c,8~\p\< c8 b'8-.->\mf e4 | %043
  bes8-.->\f\< des,8-.-> ges,8-.-> c8-.->\! ees'4(\p | %044
  f2.~ | %045
  f4~ f8) r8 a,8(\f\< e8) | %046
  aes,8-.->\! r8 r8 b''4.\p | %047
  ees,,8\f\< g,8-.-> d8-.->\! bes'''4.~(\p | %048
  bes4. a8) f,8-> r8 | %049
  a2.~(\pp\< | %050
  a2.~ | %051
  a4.\mf bes,8-.) r4 | %052
  ees4 ees8-. r8 b'8-. e,8~( | %053
  e4 f,8-.) r8 r4 | %054
  R1*3/4 | %055
  R1*3/4 | %056

  \sectionLabel \markup { \box \number 57 }
  \omit Score.BarNumber
  R1*3/4 | \undo \omit Score.BarNumber %057
  bes''8-.\mf bes8~\p bes2 | %058
  ees,->(\mf des'8-.) r8 | %059
  r8 des8-.\p r8 b8-.\mf b4~\p | %060
  b4 fis'2~->( | %061
  fis2~ fis8 a,8-.)\> | %062
  r8 a8-. r4 ees8-. r8 | %063
  ees8-.\p  r8 r4 r4 | %064
  r8 c'8~\< c4~ c8 c8( | %065
  f,8-.)\f bes8-.\mp r8 aes'4(\f des,8-.) | %066
  r8 g,,8--\p g8-. r8 r4 | %067
  g8-. r8 d4->--\< b''8-. d,,( | %068
  e'8-.) r8 fis'8(\f a,8-.) r4 | %069

  \sectionLabel \markup { \box \number 70 }
  \omit Score.BarNumber
  a8-.-> r8 a,4~\niente\< a8 c'8-.->\f | \undo \omit Score.BarNumber %070
  a,2\niente\< e'8-.->\f a,~(\mp\< | %071
  a8 cis4 f4.)\f | %072
  aes,8-.-> r8 r4 r4 | %073
  r8 b'8( dis,8) e,,8( c') d'8-.-> | %074
  d2.\pp | %075
  g8-.-> d8~ d4~ d8 d8-. | %076
  aes,8--\mf\< d'8-. fis-. bes-.\f b,,8-- c'-- | %077
  r4 ees,,8->-- des''8-. f8-.-> g,,8---> | %078
  e''8-.-> f8~\pp\< f4~ f8 f8-. | %079
  f8-.\mf gis8-. a2\> | %080
  a8-.\p\< a8-. a8( b,8-.)\f d8-. des,8---> | %081
  b'4 b8-. f8 ees'8-- fis8-.-> | %082
  ees8-. ees8-. a,8( f'4\> bes,8-.)\mp | %083

  \sectionLabel \markup { \box \number 84 }
  \omit Score.BarNumber
  \time 4/4 bes8-.\mf\< ces8( des ees)\f c8-.\p r8 r4 | \undo \omit Score.BarNumber %084
  c8-. c8(\< d8 e8)\mf r4 r8 e8-. | %085
  \time 3/4 r8 e8-. f8( g8) g8( a~) | %086
  a8 \grace e8^( b'8)--\mp \grace ees,8^( c8\f d8-.) r8 d8-.-> | %087
  r8 \grace ces'8^( des,8\p ees8-.) ees8-. \grace d8^( e4->)\f | %088
  \grace a8^( fis8)\p\< fis8-. fis( gis8) gis8( ais8~ | %089
  ais4) r8 ais8(\f b8-.) r8 | %090
  b8( cis8~ cis4)\> r8 des( | %091
  ees8) ees8-.\mf \grace e,8^( f'4.)\ff f8-.\> | %092
  f8-. f8-. f8-. ges8--\mf\< ges8-. ges( | %093
  \time 3 3/8 aes8) \grace f8^( g8\ff a,8~ | %094
  \time 3/4 \pocAce a8)\startTextSpan \grace aes'8^( bes,8~ bes4.) bes8-.\> | %095
  bes8-. bes8-. bes8-. bes8-. bes8-.\mp \grace ees8^( c8\f | %096
  d8-.) r8 d8-. d8-. d8( e8-.) | %097
  \grace bes8( f8)\mf f'8-. f8( g8-.) g8-.\< g8( | %098
  \time 3 3/8 a8-.) a8-. a8-.\stopTextSpan \tempo 4=174 | %099
  \time 3/4 \grace a,8^( ges'8\ff aes8-.) aes8-. aes8( bes-.) r8 | %100

  \sectionLabel \markup { \box \number 101 }
  \omit Score.BarNumber
  \tempo "Prestissimo" 4=232
  \time 4/4 R1*6 | \undo \omit Score.BarNumber
  \rit R1\startTextSpan
  r2 r4 r8 f,,,8~\niente\<\stopTextSpan | %108

  \sectionLabel \markup { \box \number 109 }
  \omit Score.BarNumber
  \tempo 4=200
  \time 3/4 f2~ f8 des'8->~\f | \undo \omit Score.BarNumber %109
  des4 bes2->~ | %110
  bes2\> d,4~\mp | %111
  2.~\> | %112
  \after 4 \< 2.\niente | %113
  c'2.->~\f | %114
  \rit c4.\startTextSpan b4.->\> | %115
  ees,2.~\p\< | %116
  2 f4~\f | %117
  \after 2 \stopTextSpan f2. \tempo "Tempo primo" 4=168 | %118
  fis4-> a2->~ | %119
  4. g4.~-> | %120
  g4 aes4->~ aes8 e8~-> | %121
  2.~\>\startTextSpan | %122
  4\p r4 \after 8 \stopTextSpan r4 | %123

  \sectionLabel \markup { \box \number 124 }
  \omit Score.BarNumber
  \tempo "Poco meno mosso" 4=152
  R1*3/4 | \undo \omit Score.BarNumber %124
  r8 a'4(\mp fis) bes8~-> | %125
  bes8 f4-> des4-> \grace fis8( d8~ | %126
  d2 fis4~ | %127
  fis4) \breathe des'4-> bes8-> \grace f8( d'8~ | %128
  d8 a8~ a2) | %129
  \grace b8( f8->) ees'8~ ees4~ ees8 \grace f,8( b8~-> | %130
  b8) c8~ c4 \grace b8( e4-> | %131
  e8) aes8-> g,2~ | %132
  8 \breathe g8~( g4~ g8 b,8~ | %133
  b8) \grace gis''8( dis4) e,8( gis,4~ | %134
  gis4) \grace e''8( g,2~ | %135
  g2) c4~ | %136
  c4 r8 g4.\p | %137

}
