% net clarity project

\new Staff \with {

  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \sods
  fontSize = #-2
  \override StaffSymbol.staff-space = #(magstep -2)
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
  \time 5/8 R1*5/8 \molRit \after 4 \startTextSpan R1*5/8 |
  \time 2/8 \after 8. \stopTextSpan R1*2/8 |
  \once \override Hairpin.circled-tip = ##t
  \time 3/4 c'2.~\fermata\< \bar "||" %031

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 32 }
  \tempo 2=96
  \time 2/2 c2..\p c8~->\mf\> | %032
  \undo \omit Score.BarNumber
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
  \time 3/2 \after 2 \mp cis2. r4 \molRit r2\startTextSpan | %053
  \time 2/2 \after 4. \stopTextSpan r2 r2\fermata | %054

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 55 }
  r8 b'8~->\f b2~ b8 bes-. | %055
  \undo \omit Score.BarNumber
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
  \pocRit
  \time 3/4 \after 4 \startTextSpan  e,2.\> | %067
  \after 2 \p \after 2 \stopTextSpan ees2.) \bar "||" %068

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 69 }
  \tempo "a tempo"
  \time 2/2 g8(\mf\< d' b fis' bes des4) c8( | %069
  \undo \omit Score.BarNumber
  \time 7/8 e4\f a,8) ees([ f]\> aes,4) | %070
  des,8([\mp\< c e a,] d[ b f'] | %071
  \time 2/2 ees aes g fis\mf bes,) c(\mp\< des ees! | %072
  d8 e f g8~\mf g) r8 aes8-.\< fis8-. | %073
  b8( bes a-.)\f r8 \tuplet 3/2 { g4( c e) } | %074
  \time 3/4 gis16(\< ais b cis) \tuplet 3/2 { d8( eis fis~ } fis8.) a,16( | %075
  \time 2/2 dis2)\ff r8 e8( fis b,8) | %076
  g( f\> ees bes'~ bes) a8(\f aes4\> | %077
  des4) r8 d8( \after 8 \mf c4.) e8( | %078
  \time 3/4 d b a-.) c,,(\< ees,-.)\ff des'''(^\mp | %079
  bes c g-.) bes,,-.->\ff aes''(^\< ges | %080
  \time 2/4 f8 ees4--)^\f \breathe d8_(^\mp | %081
  \time 3/4 e a cis-.) f,,,(\< a-.)\ff ees''(^\< | %082
  ges b c-.)\mf d,,,-.->_\ff aes'''(^\< bes  | %083
  f' g4.~\f 4) \breathe | %084
  \time 2/2 e,,,4.--\mp aes''8(\f\> d, ees a,8)\! r8 | %085
  cis,4.--\mp bes'8_(\f\< f' c'\! b-.) g,,-- | %086
  \molRit fis4\>\startTextSpan gis2 b4\p \breathe | %087
  \time 3/8 cis''8(\mf e,) fis,(\stopTextSpan \bar "||" %088

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 89 }
  \time 12/8 \after 1 \! gis1.)\> | %089
  \undo \omit Score.BarNumber
  \time 6/8 r4. r8 r8 b16(\< e, | %090
  \time 12/8 g2.~\mf 4.) r8 d4~( | %091
  \time 2/4 d8\> fis8 cis4)\p | %092
  \time 6/8 R1*6/8 | %093
  \time 12/8 r4 c8~\< c4.~ c4 c4( ees~ | %094
  \time 6/8 ees8) f8( bes,8~\mf 4 a8~ | %095
  \time 7/8 \after 4. \! a4.)\> r8 fis'4(\p ees8\< | %096
  \time 12/8 \after 2 \> g2.~\mp g8 e4~\pp e4.~ | %097
  \time 7/8 e4.) r4 r8 bes'16(\< f' | %098
  \time 12/8 \after 4. \> d2.~\mf 8)\! r8 r8 r8 b4(\mp\< | %099
  \time 3/16 aes8. | %100
  \time 6/8 \after 4 \> \after 2 \! c2.)\f | %101
  \time 15/8 r4.\startTextSpan a4.~\> a8 cis4~ cis4.~ \after 4 \stopTextSpan cis4.\pp \mark \markup { \smaller \musicglyph "scripts.ufermata" } \bar "||" %102

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 103 }
  \time 2/2 \acePoc r8 ges,8( ees8) r8 r4 r8 g8(\< | %103
  \undo \omit Score.BarNumber
  \time 5/8 e8)\startTextSpan r8 r4 c'8( | %104
  \time 2/2 a4) r8 cis8( gis4) r4 | %105
  r4 r8 bes8( f8-.) r8 r8 b8( | %106
  d,8-.) des''8-- r8 c,( aes-.) g''-. aes(\f\stopTextSpan d,-.) \bar "||" | %107
  \tempo 2 = 96
  cis,( a-.) f''( ees-.) bes,( g-.) bes''( f-.) | %108
  \time 3/4 b,,( fis-.) c''-- d,,( e-.) b''( | %109
  \time 5/8 \ace a-.)\startTextSpan r8 ees,( f-.) ges'-.\<\stopTextSpan | %110
  \tempo 2=104
  \time 2/2 a-. c-. ees-. f~( 8 des'8--)\ff fes,,-.\> ges-. | %111
  bes,8-. ges''4-- aes,,8-.  des-. d-. b-. r8 | %112
  g-. f-.\mp r8 fes''(\< aes4 fes8 aes8) | %113
  ees'4--\f g,,,8-.\> fis-. c'-. a-.\mf r4 | %114
  bes8-. des-. ces-. ees-. d-. r8 f,-. a''~(\f | %115
  \time 7/8 a[ b c) ees,,,]-. r8 ees4(\> | %116
  \time 2/2 fes2)\! r2 | %117
  bes''2~(\mf bes8 d,4 g8~ | %118
  g4) r4 r2 | %119
  r8 e8-. ees-. g~ g4 ges,,8-. f-. | %120
  d''-. cis-. gis'4~(\< gis8 a4.)\f | %121
  c,8-. f-. r8 e,,-.-> ees-.-> r8 r8 ges''-. | %122
  r2 r8 b,-.\< g'-. bes,-. | %123
  aes'-. d,,,-.-> r8 cis'-. a'-. r8 r4 | %124
  b'8-. r8 c-. r8 des-.->\ff r8 r8 ees-.-> | %125
  r8 g,,,4(\f aes8) r8 e'''-. d-. fis,-. | %126
  b2(\> bes8 c4) a,,8-. | %127
  g''-.\! r8 r4 b,,8-. r8 bes-.\> e'~( | %128
  e4 f2.)\mf | %129
  r8 a8-.\< d,4( ees) aes8-. ees8~\f | %130
  ees8\> c,-. des'4-- f8-.\! r8 r4 |
  R1 |
  r2 d8 c b a |
  fis dis ais g e b'4 f'8 |
  g, bes fis gis cis d a' r8 |
  ees' c e cis bes[ ges'] \tuplet 3/2 { b, d g } |
  a4 ees8( g aes, c4) r8 |
  R1 |
  r4 gis'4( cis fis~ |
  fis4 b,) \tuplet 3/2 { bes( g e) } |
  \tuplet 3/2 { c_( a f) } d2 |
  ees1 \bar "||" |
  \tempo 4 = 104
  r4 r8 bes8~ bes8 bes4->( ees8~ |
  \time 5/8 ees4~ 4.~ |
  \time 3/4 8.) e16( fis' a, b8~ b4~ |
  \time 2/2 b2.) r4 |
  \time 3/4 R1*3/4 |
  \time 4/4 r2 gis'2 |
  cis2 \tuplet 3/2 { d4( g, c,~ } |
  c2 f,) |
  f1\fermata \bar "|." |

}
