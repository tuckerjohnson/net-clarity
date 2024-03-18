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
  \time 5/4 ges8-. aes-. f1~\> | %057
  \time 2/2 f4 g8-. e8~\mp e4 ees->\f | %058
  d2~\> d8 cis4.~ | %059
  \after 2 \p cis1 | %060
  r2 r4 r8 c'8(\mf | %061
  d bes aes ges~ ges4) r8 e'8( | %062
  g8 f4)\< ees8~( ees des8 b' a~ | %063
  a4) d4.->\f f,8~-> f4 | %064
  \tuplet 3/2 { fis4( b, a'\> } \tuplet 3/2 { bes, aes' c, } | %065
  \time 7/8 g'2~\mp 8) r8 cis,8( | %066
  \time 3/4 \after 4 ^\markup { "poco rit." } e,2.\> | %067
  ees2~ 4\p) \bar "||" %068
  \tempo "A tempo"
  \time 2/2 g8(\mf\< d' b fis' bes des4) c8( | %069
  \time 7/8 e4\f a,8) ees([ f]\> aes,4) | %070
  des,8([\mp\< c e a,] d[ b f'] | %071
  \time 2/2 ees aes g fis\mf bes,) c(\mp\< des ees! | %072
  d8 e f g8~\mf g) r8 aes8-.\< fis8-. | %073
  b8( bes a-.)\f r8 \tuplet 3/2 { g4( c e) } | %074
  \time 3/4 gis16(\< ais b cis) \tuplet 3/2 { d8( eis fis~ } fis8.) a,16( | %075
  \time 2/2 dis2)\ff r8 e8( fis b,8) | %076
  g( f\> ees bes'~ bes) a8(\f aes4\> | %077
  des4) r8 d8( \after 8 \mf c4.) e8( | %078
  \time 3/4 d b a-.) c,,(\< ees,-.->)\ff des'''(^\mp | %079
  bes c g-.) bes,,-.->\ff aes''(^\< ges | %080
  \time 2/4 f8 ees4--)^\f \breathe d8_(^\mp | %081
  \time 3/4 e a cis-.) f,,,(\< a-.->)\ff ees''(^\< | %082
  ges b c-.)\mf d,,,-.->_\ff aes'''(^\< bes  | %083
  f' g4.~\ff 4) \breathe | %084
  \time 2/2 e,,,4.--\mp aes''8(\f\> d, ees a,4)\!| %085
  cis,4.--\mp bes'8_(\f\< f' c' b-.)\! g,,(\mp\> | %086
  fis4) gis2 b4\p \breathe | %087
  \time 3/8 cis''8\mf e, fis,( \bar "||" %089
  \time 12/8 gis1.) | %090
  \time 6/8 r4. r8 r8 b16( e, |
  \time 12/8 g2.~ 4.) r8 d4( |
  \time 2/4 fis4 cis) \bar "||"
  \time 6/8 R1*6/8 |
  \time 12/8 r4 c8~ c4.~ c4 c4( ees~ |
  \time 3/4 ees8) f8( bes,4~ 4\fermata) |


}
