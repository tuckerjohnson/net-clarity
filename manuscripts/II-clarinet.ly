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
  \tempo "Vivace" 4=168
  \time 5/8 ces'4\f ees8[ bes']-. r8 | %001
  \time 4/4 \grace { s8 } c,4 d'\> a'8( cis4.)\mp | %002
  \time 5/8 \grace { s8 } e,,,8[ g']-. r8 aes,4 | %003
  \time 6/8 f''4  ges8-. a,,4->\f bes8( | %004
  f' d8)-. r8 c'4 e'8-. | %005
  fis,,,4(\mp  cis') ees'8-. r8 | %006
  \time 5/8 g8-. r8 b4( aes8-.) | %007
  \time 4/4 c,,4->\f des' bes'8-. r8 a,4 |%008
  \time 3/8 e d''8-. | %009
  \time 3/4 aes,4\p ges'4 f'8-. r8 | %010
  \time 4/4 ees,,,8( g4)\< b'8 f,4->\f ges' | %011
  \time 5/8 g''8 bes,,,4 a' | %012
  \time 4/4 aes'8[ d,,,8]\mp e''4 c'8-.\< r8 cis,,4 | %013
  \grace { s8 } b'8 ees'8--\f r4 \once \override Hairpin.circled-tip = ##t f,,2\<\fermata | %014

  \sectionLabel \markup { \box \number 15 }

  \time 7/8 f4\fp des( aes4) d8
  \time 4/4 c'4 b'4 bes,,8 a''4.
  \time 7/8 ees4 ges,,4  g''8 e'4 \breathe
  \time 4/4 d,4( f8) cis' c,,4  bes'4
  fis'4 aes,,8 g'8~ 8 a'4 b,,8(
  e,4) \breathe ees'8 d,8~ d8 b''4 c'8
  bes,,4 des4~ des8 g'4 ges,,8
  aes'4 ees''4 \breathe f,,,8\< a4 e''8~\mp
  \time 6/8 e4. ees,,8\< b' fis''
  \grace { b,,8( } e,8) cis'' a gis,4.\f
  \time 2/4 r8  f'4\> bes8
  \time 4/4 d8\p  r8 r4 r4 aes'4(\mp
  \time 6/8 b2.
  e,4.) \breathe d,,8-.\mf fis-. a-.
  r8 bes(\< des f4 fis8)\f
  ees'2.\p
  \time 4/4 f,,8-.-> c''8( 2.)
  \time 4/4 d,8(\< bes)-. a'4\f des,8-.-> ees( g) aes,-.
  c'4 r4 r2 |
  r2 r8 e,,8-.-> a''4(\p |
  \time 9/8 fis8[) b,,-.-> d''-- g,,,]-.-> b''4 dis,,,8-.-> ais'''( cis)
  gis,8\f( e b'4) r2 |
  f'2~\p f8 r8 c,-.-> r8
  \time 7/8 b'8-> e4 bes8[->\f\< des,-.-> ges,-.->\! c8]-.-> |
  \time 4/4 ees'4(\p f2.) |
  \time 3/4 r4 r4 a,8(\f\< e) |
  \time 6/8 aes,-.->\! r8 r8 b''4.\p |
  ees,,8\f\< g,-.-> d-.->\! bes'''4.(~\p |
  \time 2/4 bes4. a8) |
  f,->

}
