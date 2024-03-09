% clarity project

\new PianoStaff \with {
  instrumentName = \markup { "piano " }
  shortInstrumentName = \markup { "pno " }
  \consists Text_mark_engraver
}
<<

  \new Staff = "u" \with { \consists "Merge_rests_engraver" }
  {

    \set PianoStaff.connectArpeggios = ##t
    \relative {

      \numericTimeSignature
      \tempo 4=104
      \time 5/4 R1*5/4 | %001
      \time 4/4 r16 bes'8.~(^\p^\markup { \tiny \italic "cantabile" } 2~ 8 f'8~ | %002
      f2~ 8 ges8~ 4 | %003
      ees4~ 8) 16( aes,16~ 2~ | %004
      8) r8 r4 r4 r16 cis8.~(^\< | %005
      1~ | %006
      \time 5/4 4~ 16 c8.~ 16 g'8.~^\mp 2) | %007
      \time 4/4 R1 | %008
      r2 r4 r16 d16(^\pp e8 | %009
      b1~ | %010
      4~ 8) 8~(^\mf 8. a16~ 4~ | %011
      4) r8. d16(^\> a4~ 8 bes8 | %012
      c1)^\mp | %013
      r4 g'2( f8^\< e8~ | %014
      e8 fis16 dis16 b8 gis'8 cis,2~^\mf | %015
      cis2) r4 r8 b8(~ | %016
      b8. cis16 f8 d8~ d8 ees8~ ees4~ | %017
      ees8) r8 a16(^\f gis8.~  gis4) g8 e8 | %018
      c4-- r16 bes8.~^\mp bes16 bes16-. r8 r4 | %019
      r4 r16 ges'8.~^\mf ges4~ ges8 ges8--^\f | %020
      \sectionLabel \markup { \box \number 21 }
      \omit Score.BarNumber
      \override DynamicLineSpanner.staff-padding = \phds
      \time 3/4 ges8-.\f r8 r4\pp r4 | %021
      \undo \omit Score.BarNumber
      fis,8.-- g16~->\mf\> g8 bes16-. c16-. e,16-. gis8( cis16)-.\p | %022
      r8 d16(\< a16 b4)\mf b8 dis,8~\> | %023
      dis4 dis8-- r8 f8[-.\mp r16 f16]-. | %024
      r8 a8-. r16\< cis16( e,8 b'8. fis16 | %025
      bes16\f ees8.~ ees8 d8~ d4~ | %026
      d8) r8 aes4 f'8-. c16-.\> g16-. | %027
      \time 5/8 \after 4.. \mp R1*5/8 | %028
      f'16(\< bes,8.) g16[( d'16 fis16^\markup { "molto rit." } e16 cis'16
      a16]) | %029
      \time 2/8 \tuplet 3/2 { <ees ees'>8->\f\> <aes, aes'>8-> <b b'>8-> } | %030
      \time 3/4 <c c'>2.\mf\fermata \clef bass | %031
      \sectionLabel \markup { \box \number 32 }
      \omit Score.BarNumber
      \tempo 2=96
      \time 2/2 r8\p f,,4.~ f2~ | %032
      \undo \omit Score.BarNumber
      f4 fis2 bes8( des, | %033
      c2.) b'4(~\< | %035
      b8 gis8~ gis4 e4.) ees8( | %036
      \time 3/2 d8-.)\mf r8 r4 r2 r2 | %037
      \time 2/2 r8\< f8->~ f2. | %037
      g1->\f \clef treble | %038
      \time 3/4 bes8-.\> des-. b4( a4~ | %039
      \after 2.. \p a1)\mp | %040
      r2\< fis'8-. b8-. \tuplet 3/2 { r8 r8 a'8~\mf } | %041
      a1 | %042
      R1 | %043
      R1 | %044
      \revert DynamicLineSpanner.staff-padding
      r4 r8 c8-.\mf g-. bes-. r4 | %045
      \time 5/4 r8 b8-. r4 r8 ees,8-.\< des-. f-. aes-.\! r8 | %046
      r2 e8-.\< a,-. fis-. d-.\! | %047
      \override DynamicLineSpanner.staff-padding = \phds
      \after 2. \> R1 | %048
      r8 f8-. gis,8-. a8~\mf \after 4 \> a2 | %049
      \time 5/4 r8 ees'8( des2.)\mp b'4~(\pp | %050
      \time 2/2 \tuplet 3/2 { b2 g4~ } \after 4 \mf <g c>2~ | %051
      <g c>8) r8\f\> r4 d4-- \tuplet 3/2 { d8-. bes8-. ges8-. } | %052
      \time 3/2 r8 ges8-- r4 \after 4. \mp e2~( \tuplet 3/2 { e2\>^\markup { "molto rit." } g4~ } | %053
      \time 2/2 g2~ g2\p\fermata) \bar "||" %054
      \tempo "A tempo"
      \after 4 \f R1 | %055
      r2 e'8-. f8-. r4 | %056
      \time 5/4 r4 r8 des8-. bes'4( c4.) d8-. | %057
      \time 2/2 a2.. aes8~ | %058
      aes2. r4 | %059
      \tuplet 3/2 { b,2 dis fis } | %060
      \tuplet 3/2 { b2 dis fis } | %061
      r8 des'8 f,4 <f des'>2 | %062
      <c a' d>2\arpeggio gis4 <gis e'> | %063
      <bes g'>4 bes8-> c8~ <c aes'>2 | %064
      \tuplet 3/2 { e,8~ <e d'>~ <e d' g>~ } 4 \tuplet 3/2 { ees8~ <ees des'>~ <ees des' f>~ } 4 | %065
      \time 7/8 R1*7/8 | %066
      \time 3/4 fis'4( a, b,~ | %067
      b4. bes8~ bes4)\fermata | %068
      a4 <e' gis dis'>2~\arpeggio 8 f'8 | %069
      \time 7/8 g8~ <g b, d,>4 <ges, bes>( <des c'>) | %070
      r4 <ges, aes>4-. r8 g8-. r8 | %071
      \time 2/2 r4 <a cis>8-. <b d>-. r4 gis'8-. r8 | %072
      <c, a'>8-. r8 r4 bes8( <ees e'!>-.) r4 | %073
      r4 <f d'>8-. r8 r2 | %074
      \time 3/4 R1*3/4 | %075
      \time 2/2 r4 g4-- g2 | %076
      r4 des8-. r8 c''8-. r8 r4 | %077
      b8-. bes-. r4 ees,4-. r4 | %078
      \time 3/4 r4 g,,4. 8 |
      aes2 r4 |
      r8 b8~ 2 |
      r4 r8 bes8~ 4 |


    }

  }

  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {

    \clef bass
    \set Staff.pedalSustainStyle = #'mixed
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \relative {

      \numericTimeSignature
      \tempo 4=104
      \time 5/4 r16 f'16-.^\pp aes,16-. r16 r8 fis16-. r16 dis'16[-. r8
      cis16]-. r4 r4 | %001
      \time 4/4 b8-.^\markup { \tiny \parenthesize \italic "sempre staccatiss." }
      r8 a8-. c,8-. g'8-. e16-. d16-. r8. bes'16-. | %002
      cis16-.^\< gis8-. b16-. r8. a16-. r4 r16 e'16-. r8 | %003
      r16 d16-. g,16-. c16-.^\p r4 bes16-.^\> ees,16-. f8-. ges8-. r8 | %004
      b16-. a-. g8-.\pp r8 e'8-. cis[-. r16 d16]-. c8-. r8 | %005
      \clef treble ees16-. f8-. fis16-. gis8-. ais8( b)-. c16(^\< d16~ 16 e a,
      g16~ | %006
      \time 5/4 g8. ges16~ 8 f8~\mp 2.) | \clef bass %007
      \time 4/4 r8 cis16-.^\pp dis16-. r16  ais16-.[ \set stemLeftBeamCount = #1
      \set stemRightBeamCount = #1 r16 gis16]-. r16 a16[-. \set
      stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 b16]-. e,-. d'8-.
      des16-. | %008
      fis,16(^\mp aes8. g16)-. f-.^\pp^\< ees8-. c16-. bes8-. a16-.^\mp r4 | %009
      r4 r16 des16-.^\pp g-. ges-. bes,8-. ees8(^\< d8. c16~ | %010
      16 b8.~\mp 4) r8 gis8-.^\pp r8 e'8-. | %011
      r8. f16-. cis8-. fis8-. r16 b8.(^\< e16 ees8.~ | %012
      16 f8 g16^\mf d8-.) a-.^\p r16 bes,16-. c8-. r16 des16-. ees-. f16-. | %013
      ges-. aes-. r8 r8. b16-. e-. c8-. d16-. r16 a16-. r8 | %014
      r2 r16 bes16-. r8 r16 g16-.^\< aes-. bes-. | %015
      r16 c,-. des-. f-. ees8-. r8 d-. e-. fis16-. g8.(^\mf | %016
      a,2) b8.( g'16~ 8) bes,16-.^\p e-. | %017
      r16 ges[-. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16
      c,]-. r8. des16-. ees,2~^\mf | %018
      8. a16(^\> d8 f8~ 16 b16)-.^\p r8 r8. fis,16-.^\< | %019
      g16-. c16-. d16-. e16-. a16-. bes8.--^\mf r16 ees,16[-.^\< r16 f16]-.
      aes8[-. r16 ces16]-. | %020
      \override Staff.Hairpin.stencil = ##f
      \override Staff.DynamicText.stencil = ##f
      \time 3/4 des8-.\f r8 a16-.\pp gis16-. f8-. b,16( cis8.) |  %021
      d8.-- <ees ees,>16~->\mf <ees ees,>2 | %022
      r8 fis16(\mp\< c16 g8~\mf <g e'>8~ <g e'>16) bes8(\> f16 | %023
      cis8 gis'8 fis16 b,8-.) c16( d8-.)\mp bes16-. e16-. | %024
      r16 g16[-. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16
      ees16]-. a,4(\< aes4 | %025
      g16\f c8.~ c8) f16_(~ <f a'>16~ <f bes a'>4~ | %026
      <f bes a'>16) cis'16( dis8~ <dis e,>8.) fis,16-. d'8-.\> r8 | %027
      \time 5/8 a'16-. e16-. r8 b16[-. \set stemRightBeamCount = #1 fis16-.
      \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 cis16]-.\p
      r8 | %028
      c16[(\< ees8.]~ ees8) <bes bes'>4-> | %029
      \time 2/8 <f f'>8[->\f\> <d' d'>8]-> | %030
      \time 3/4 <g, g'>2.\mf\fermata | %031
      \tempo 2=96
      \time 2/2 b8-.\p r8 r4  r8 d8-. g8-. r8 | %032
      e8-. f8-. r4 r8 ees8-. r4 | %033
      r2 ges8-. bes,-. r8 des-. | %034
      R1 | %035
      \time 3/2 a8-.\mf r8 r4 r4 c2.( | %036
      \time 2/2 bes8-.)\< r8 e'8( d cis b a gis) | %037
      r2\f r8 c8-. r4 | %038
      \time 3/4 ees8-.\> f-. fis( g) e-. d-. | %039
      \time 2/2 cis2..\mp f8-.\p | %040
      ees(\< aes) g( c)\mf r2\sustainOn | %041
      R1 | %042
      \revert Staff.Hairpin.stencil
      \revert Staff.DynamicText.stencil
      r2\sustainOff \tuplet 3/2 { gis2~^\p <dis gis>4~ } | %043
      <dis gis>2. d,4^\mp | %044
      e2. f4^\mf | %045
      \time 5/4 fis2.~ fis2 | %046
      \time 2/2 g4.-- <c, c'>8~->^\f 2 | %047
      \override Staff.DynamicText.stencil = ##f
      \override Staff.Hairpin.stencil = ##f
      <ees ees'>8->( ges bes) <d, d'>8~-> \tuplet 3/2 { <d d'>2\> <cis cis'>4( } | %048
      <e e'>4~ <e b' e>2)\mf\> g4~ | %049
      \time 5/4 <g c>8~ <g c f>4.~\mp 2. | %050
      \time 2/2 r2 r4 a4~\mf | %051
      a8 a4.->\f\> gis4( b4~ | %052
      \time 3/2 b2.) f8(\mp\> <d d'>8~ 8 <c c'>4. | %053
      \time 2/2 <bes bes'>2 <a a'>2)\fermata\p | %054
      r4 cis8(\f dis e fis gis4 | %055
      g!4.) <d d'>8~-> 4 <ees ees'>4~-> | %056
      \time 5/4 <ees ees'>2.. des8~ des4~ | %057
      \tuplet 3/2 { des2 b4~ } b4 fis'4~ | %058
      fis8 g'-. c,-. f-. bes,4( a | %059
      gis2~\sustainOn <gis e'>2) | %060
      g'2~\sustainOff\sustainOn <g e'> | %061
      r2\sustainOff\sustainOn b4 bes | %062
      bes2\sustainOff\sustainOn r4\sustainOff\sustainOn fis4 | %063
      r8\sustainOff ees8~ 2~ \tuplet 3/2 { 4 des8~ } | %064
      des2. r4 | %065
      \time 7/8 R1*7/8 | %066
      \time 3/4 aes4.(\sustainOn d4. | %067
      f4\sustainOff\sustainOn a, c,)\fermata | %068
      \time 2/2 R1\sustainOff | %069
      \time 7/8 R1*7/8 | %070
      r4 ees4-. r8 bes8-. r8 | %071
      \time 2/2 r4 e8-. e-. r8 f-. fis-. r8 | %072
      b,8-. r8 r4 r8 des'8-. r4 | %073
      R1 | %074
      \time 3/4 R1*3/4 | %075
      \time 2/2 r4 c4-- c2 | %076
      r4 aes8-. r8 r8 d,8-. r8 e''8( | %077
      f8-.) ges8-. r8 a,,8( g4-.) r4 | %078
      \time 3/4 r4 fis4. 8 |
      f2 r4 |
      r8 cis8~ cis2 |
      r4 r8 g'8~ g4 |

    }

  }

>>
