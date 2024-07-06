% root = ../net-clarity.ly

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \sods
  fontSize = \clarinetFont
  \override StaffSymbol.staff-space = \clarinetMagstep
  \consists Text_mark_engraver
}

\transpose bes c'
\relative {
  \compressEmptyMeasures
  \numericTimeSignature
  \clef treble
  \tempo "Allegro energico" 4=104
  \time 5/4 R1*5/4 | %001
  \time 4/4 R1*5
  \time 5/4 R1*5/4 |
  \time 4/4 R1*13 |

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 21 }
  \time 3/4 R1*3/4*7 |
  \undo \omit Score.BarNumber
  <<
    {
      \time 5/8 R1*5/8
      \molRit \after 4 \startTextSpan R1*5/8 |
      \time 2/8 \after 8. \stopTextSpan R1*2/8 |
      \once \override Hairpin.circled-tip = ##t
    }
    \tag #'part  {
        \new CueVoice \relative {
        \time 5/8 s4 s4. | %028
        f''16 bes,8. g16[ d'16 fis16 e16 cis'16 a16] | %029
        \time 2/8 \tuplet 3/2 { <ees ees'>8 <aes, aes'>8 <b b'>8 } | %030
        }
    }
  >>
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
  d2\mf r4 e4~ | %041
  e1~\> | %042
  e4 cis,2.~\mp | %043
  \tuplet 5/4 { cis2\< a'8~\mf } a2~ | %044
  \after 2. \p a1\> | %045
  \time 5/4 r4 \after 4 \< bes1~( | %046
  \time 2/2 bes4 b2.)\mf | %047
  r2 c8-.\f g-. a4~ | %048
  a4. d,8~(\> d4 aes) | %049
  \time 5/4 bes1\mp\> aes'8(\pp fes8 | %050
  \time 2/2 ees2.) r4 | %051
  f8-.->\f r8 f8-.-> des8-.-> r4 des4~\> | %052
  \time 3/2 \after 2 \mp des2. r4 \molRit r2\startTextSpan | %053
  \time 2/2 \after 4. \stopTextSpan r2 r2\fermata | %054

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 55 }
  \tempo "A tempo" 2=96
  r8 ces'8~->\f ces2~ ces8 bes-. | %055
  \undo \omit Score.BarNumber
  a8-. b-. c2. | %056
  \time 5/4 ges8-. aes-. f1~\> | %057
  \time 2/2 f4 g8-. e8~\mp e4 ees->\f | %058
  d2~\> d8 cis4.~ | %059
  \after 2 \p cis1 | %060
  r2 r4 r8 c'8(\mf | %061
  d bes aes ges~ ges4) r8 e'8( | %062
  g8 f4)\< ees!8~( ees cis8 b' a~ | %063
  a4) d4~->\f d8 f,4.-> | %064
  \tuplet 3/2 { fis4( b, a'\> } \tuplet 3/2 { bes, aes' c, } | %065
  \time 7/8 g'2~\mp 8) r8 des8( | %066
  \pocRit
  \time 3/4 \after 4 \startTextSpan  fes,2.\> | %067
  \after 2 \p \after 2 \stopTextSpan ees2.) \bar "||" %068

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 69 }
  \tempo "A tempo" 2=96
  \time 2/2 g8(\mf\< d' ces ges' bes des4) c8( | %069
  \undo \omit Score.BarNumber
  \time 7/8 e4\f a,8) ees([ f]\> aes,4) | %070
  des,8([\mp\< c e a,] d[ b f'] | %071
  \time 2/2 ees aes g ges\mf bes,) c(\mp\< des ees | %072
  d8 e f g8~\mf g) r8 aes8-.\< ges8-. | %073
  ces8( bes a-.)\f r8 \tuplet 3/2 { g4( c e) } | %074
  \time 3/4 aes16(\< bes ces des) \tuplet 3/2 { eeses8( f ges~ } ges8.) a,16( | %075
  \time 2/2 ees'2)\ff r8 e8( fis b,8) | %076
  g( f\> ees bes'~ bes) a8(\f aes4\> | %077
  des4) r8 d8( c4-.)\mf r8 e8( | %078
  \time 3/4 d[ b a]-.) c,,[(\< ees,]-.)\ff des'''(^\mp | %079
  bes[ c g]-.) bes,,-.->\ff aes''[(^\< ges] | %080
  \time 2/4 f8 ees4--)^\f \breathe d8(^\mp | %081
  \time 3/4 e[ a cis]-.) f,,,[(\< a]-.)\ff ees''(^\< | %082
  ges[ b c]-.)\mf d,,,-.->_\ff aes'''[(^\< bes]  | %083
  f' g4.~\f 4) \breathe | %084
  \time 2/2 fes,,,4.--\mp aes''8(\f\> d, ees a,8)\! r8 | %085
  des,4.--\mp bes'8(\f\< f' c'\! b-.) g,,_- | %086
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
  \time 12/8 r8 r8 c!8~\< c4.~ c4 c4( ees~ | %094
  \time 6/8 ees8) f8( bes,8~\mf 4 a8~ | %095
  \time 7/8 \after 4. \! a4.)\> r8 fis'4(\p ees8\< | %096
  \time 12/8 \after 2 \> g2.~\mp g8 e4~\pp e4.~ | %097
  \time 7/8 e4.) r4 r8 bes'16(\< f' | %098
  \time 12/8 \after 4. \> d2.~\mf 8)\! r8 r8 r8 b4(\mp\< | %099
  \time 3/16 aes8. | %100
  \time 6/8 \after 4 \> \after 2 \! c2.)\f | %101
  \time 15/8 r4.\startTextSpan a4.~(\> a8 cis4~ cis4.~ \after 4 \stopTextSpan cis4.)\pp \mark \markup { \smaller \musicglyph "scripts.ufermata" } \bar "||" %102

  \omit Score.BarNumber
  \sectionLabel \markup { \box \number 103 }
  \tempo "Lento" 2=48
  \time 2/2 \acePoc r8 ges,8( ees8) r8 r4 r8 g8(\< | %103
  \undo \omit Score.BarNumber
  \time 5/8 e8)\startTextSpan r8 r4 c'8( | %104
  \time 2/2 a4) r8 cis8( gis4) r4 | %105
  r4 r8 bes8( f8-.) r8 r8 b8( | %106
  d,8-.) des''8-- r8 c,( aes-.) g''-. aes(\f\stopTextSpan d,-.) \bar "||" | %107
  \tempo "Allegro" 2 = 96
  cis,( a-.) f''( ees-.) bes,( g-.) bes''( f-.) | %108
  \time 3/4 b,,[( fis]-.) c''[-- d,,]( e[-.) b'']( | %109
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
  r8 fes8-. ees-. g~ g4 ges,,8-. f-. | %120
  d''-. cis-. gis'4~(\< gis8 a4.)\f | %121
  c,8-. f-. r8 fes,,-.-> ees-.-> r8 r8 ges''-. | %122
  r2 r8 b,-.\< g'-. bes,-. | %123
  aes'-. d,,,-.-> r8 cis'-. a'-. r8 r4 | %124
  b'8-. r8 c-. r8 des-.->\ff r8 r8 ees-.-> | %125
  r8 g,,,4(\f aes8) r8 e'''-. d-. fis,-. | %126
  b2(\> bes8 c4) a,,8-. | %127
  g''-.\! r8 r4 b,,8-. r8 bes-.\> e'~( | %128
  e4 f2.)\mf | %129
  r8 a8-.\< d,4( ees) aes8-. ees8~\f | %130
  ees8\> c,-. des'4-- f8-. r8 c,8-. des'8~ | %131
  des8 fes8-.\! r8 ees,8(\p\< aes,-.) e'( a,-.) f'( | %132
  \time 7/8 bes,-.)[ g'( b,-.) d~--] d[ aes'( ees)] | %133
  \time 2/2 \tuplet 3/2 { e8[(\f\> fis g] } \tuplet 3/2 { a[ b cis] } d2)\mf | %134
  r8 c,8-. f'4--\< bes8-. r8 ees,,,8-. des''~-- | %135
  des4\f fis8(\> \pocRit a,\startTextSpan b2) | %136
  c,8-.\mf\> r8 r8 g''8-. aes,-. f'-. r8 e,-.\stopTextSpan \bar"||" | %137

  \sectionLabel \markup { \box \bold { CADENZA } }
  \phrasingSlurDashed
  \omit Score.BarNumber
  \override Score.TimeSignature.stencil = ##f
  \time 7/8  d,-.\! r8 r4\shortfermata \once \override Staff.Stem.stencil = ##f
  \footnote \markup \huge "*" #'(-3 . -1) \markup \tiny \left-column {
    \line { "* Cadenza notation should be interpreted freely, though music should be" } \vspace #-0.4
    \line { "continuous between breath marks and rests. Breath marks indicate a short" } \vspace #-0.4
    \line { "break, while rests are longer." }
  }
  bes'4(\mp ces8) |
  \omit Staff.BarLine
  \time 4/4 ces1 \breathe |
  \time 9/16 \override Beam.grow-direction = #RIGHT \featherDurations 1/2 { ces'16( des,\< aes') ees'( ces fes) ees( ges ces) } |
  \time 5/8 \once \override Staff.Stem.stencil = ##f fes4(\f\> \once \override Staff.Stem.stencil = ##f \after 8 \! des) e,8 |
  \time 4/4 \after 4 \> f,1( \once \override Staff.Stem.stencil = ##f
  \time 3/8 c'4)\! a,8-.\sf |
  \time 5/4 d'1\p r4\shortfermata |
  \time 5/8 bes,8-- 8-> \once \override Staff.Stem.stencil = ##f g''4(\< d8-.) |
  \override Beam.grow-direction = #'()
  \time 7/16 d'16([\mf\> c bes a g f e]) |
  \time 2/1 e,,1(\p \once \override Hairpin.circled-tip = ##t \after 2.. \! d)\>\fermata \breathe |
  \time 18/8 ces'16([\pp aes f d f aes ces aes f d f aes ces aes f d f aes ces aes f d f aes ces aes f d f aes ces aes f d\< f aes]) |
  \time 7/16 ces[( des ges bes ges bes des]) |
  \time 2/4 \override Beam.grow-direction = #LEFT \featherDurations 2/1 { bes[(\f des ges) bes,( des ges)] } g8--\sf \breathe |
  \override Beam.grow-direction = #'()
  \time 5/2 ees16([\> c a g a c ees g ees\pp c a g a c ees g ees c a g a c ees g ees c a g a c ees g ees c a g a c\< ees g]) |
  \time 6/16 \override Beam.grow-direction = #LEFT \featherDurations 2/1 { ees[( c a g e! b] } |
  \override Beam.grow-direction = #'()
  \time 7/16 \once \override Staff.Stem.stencil = ##f fis4)\ff e''16([\> b' fis')]\!\breathe |
  \time 2/1 g1\> aes,1\mf\fermata( |
  \time 6/16 g16[\> f ees des c bes)]\pp |
  \time 7/8 r4\shortfermata c8[\< bes]( \once \override Staff.Stem.stencil = ##f a'4)\mp d,,,8-. |
  \time 5/2 f'1 c'8(\> g ees' f bes1)\fermata |
  \time 2/8 ees,,,8-.\! s8 \breathe |
  \time 7/16 cis'16([\< b fis' e' d gis a-.])\mp |
  fes,([\p\< ees beses' aes' ges c des-.])\mf |
  d!([\< f, b, g bes, aes ees-.]) |
  fis'([ e b' a' g cis d-.])\f \breathe |
  \time 2/4 s16 c16([ f bes--]) r4\shortfermata |
  \time 5/4 \once \override Staff.Stem.stencil = ##f a,4(\> \once \override Staff.Stem.stencil = ##f fis, \once \override Staff.Stem.stencil = ##f ees' \once \override Staff.Stem.stencil = ##f des2)\mp |
  c8( d \once \override Staff.Stem.stencil = ##f e4) f,,8(\pp aes \once \override Staff.Stem.stencil = ##f g2) |
  \time 3/4 \once \override Staff.Stem.stencil = ##f ces''4(\mf\> \once \override Staff.Stem.stencil = ##f \after 8 \! bes,4) r4\shortfermata |
  \time 3/8 \once \override Staff.Stem.stencil = ##f bes,4(\mp ces8) |
  \time 4/4 ces1 |
  \time 3/8 ees,8 \once \override Staff.Stem.stencil = ##f des'4(\> |
  \time 4/4 \after 4. \! fes1) |
  \time 5/4 bes,8-.\sf aes'8( ges1) \breathe |
  \time 4/4 g8(\< d'8) c( g' \override Beam.grow-direction = #RIGHT \featherDurations 1/2 { bes16--) a(\f\> d) c( bes a g f } |
  \after 4. \p e1\fermata |
  \time 2/4 e'8-.) 8-- \breathe \once \override Staff.Stem.stencil = ##f d,,,4(\pp |
  \override Beam.grow-direction = #'()
  \time 33/16 f16[ aes ces aes f d f aes ces aes f d f aes ces aes f d f aes ces aes f d f aes ces aes f d f\< aes ces] |
  \time 3/16 d[ des bes] | %138
  \time 5/4 \once \override Staff.Stem.stencil = ##f ges4)\f \once \override Staff.Stem.stencil = ##f 4\sf \once \override Staff.Stem.stencil = ##f 2\fermata r4\shortfermata \bar "||"
  \undo \omit Staff.BarLine

  \sectionLabel \markup { \box \number 139 }
  \undo \omit Score.BarNumber
  \revert Score.TimeSignature.stencil
  \tempo "Ravvivando il tempo" 2=72
  \set Score.currentBarNumber = #139
  \time 2/2 ees8--\p \ace a'(\startTextSpan c)\< g,( ges) fes''( ces' bes | %139
  aes) ees,,-. g''( f) des,-. c''( a) d,,,-.\stopTextSpan | %140
  \tempo "Allegro" 2=96
  bes'''( g f ees) c'(\f d cis b | %141
  a gis fis e) d8( c b a) | %142
  ges(\< ees bes) g( e b'4)\ff \breathe f'8( | %143
  \time 7/8 g,)[ bes( ges\psubito\< aes)] cis([ d a']) | %144
  \time 2/2 ees'([->\mf\< c]) \tuplet 3/2 { fes(-> des bes) } ges'(->\ff\> ces,) d( g | %145
  a4)\mf ees8(\f\> g aes, \after 4 \! c4.) | %146
  R1 | %147
  r4 aes'4(\p\< des ges~\mf\> | %148
  ges4 ces,)\! bes8(\< g e) c( | %149
  a f) d4\f\> \after 4 \! ees2 \bar "||" | %150
  \omit Score.BarNumber

  \sectionLabel \markup { \box \number 151 }
  \tempo "Tempo rubato" 4 = 104
  r4 r8 bes8~\mp bes8 bes4->( ees8~ | %151
  \undo \omit Score.BarNumber
  \time 5/8 ees4~ 4.~ | %152
  \time 3/4 8.) e16(\mf\> fis' a, b8~ b4~ | %153
  \time 2/2 \rit \after 4 \startTextSpan b2.)\p r4 | %154
  \time 3/4 \after 1*11/16 \stopTextSpan R1*3/4 \bar "||" | %155
  \tempo "Meno mosso"
  \time 4/4 r2 gis'2\mp\< | \tag #'part { \break } %156
  \rit cis2\startTextSpan \tuplet 3/2 { d4(\f g, c,~ } | %157
  c2 f,) | %158
  f1\stopTextSpan\fermata \bar "|." | %159

}
