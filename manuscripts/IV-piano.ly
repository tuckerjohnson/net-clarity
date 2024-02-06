% clarity project

\new PianoStaff \with {
  instrumentName = \markup { "piano " }
  shortInstrumentName = \markup { "pno " }
  \consists Text_mark_engraver
}
<<

  \override PianoStaff.Arpeggio.arpeggio-direction = #UP

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
      \override DynamicLineSpanner.staff-padding = \phds
      \time 3/4 ges8-.\f r8 r4\pp r4 | %021
      fis,8.-- g16~->\mf\> g8 bes16-. c16-. e,16-. gis8( cis16)-.\p | %022
      r8 d16(\< a16 b4)\mf b8 dis,8~\> | %023
      dis4 dis8-- r8 f8[-.\mp r16 f16]-. | %024
      r8 a8-. r16\< cis16( e,8 b'8. fis16 | %025
      bes16\f ees8.~ ees8 d8~ d4~ | %026
      d8) r8 aes4 f'8-. c16-.\> g16-. | %027
      <<
        {
          \time 5/8 R1*5/8 | %028
        }
        {
          \time 5/8 s4 s8. s8.\mp
        }
      >>
      f'16(\< bes,8.) g16[( d'16 fis16 e16 cis'16 a16]) | %029
      \time 2/8 \tuplet 3/2 { <ees ees'>8->\f\>^\markup { "molto rit." } <aes, aes'>8-> <b b'>8-> } |%030
      \tempo 2=104
      \time 2/2 <c c'>1\mf
      r4 f'4( d4 b4 |
      g4 e2) dis'4~( |
      dis2 gis,2~ |
      gis4) ais4( fis2~ |
      fis4 cis2) a'4~( |
      a4 c4 bes2) |
      a2(  \tuplet 3/2 { b4 d,8 } gis8-.) r8 |
      r4 \tuplet 3/2 { r8 f4~( } \tuplet 3/2 { f4 ees2 } |
      c8)-. r8 fis,2( g8-.) r8 |

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
      \time 5/4 r16 f'16-.^\pp aes,16-. r16 r8 fis16-. r16 dis'16[-. r8 cis16]-. r4 r4 | %001
      \time 4/4 b8-.^\markup { \tiny \parenthesize \italic "sempre staccatiss." } r8 a8-. c,8-. g'8-. e16-. d16-. r8. bes'16-. | %002
      cis16-.^\< gis8-. b16-. r8. a16-. r4 r16 e'16-. r8 | %003
      r16 d16-. g,16-. c16-.^\p r4 bes16-.^\> ees,16-. f8-. ges8-. r8 | %004
      b16-. a-. g8-.\pp r8 e'8-. cis[-. r16 d16]-. c8-. r8 | %005
      \clef treble ees16-. f8-. fis16-. gis8-. ais8( b)-. c16(^\< d16~ 16 e a, g16~ | %006
      \time 5/4 g8. ges16~ 8 f8~\mp 2.) | \clef bass %007
      \time 4/4 r8 cis16-.^\pp dis16-. r16  ais16-.[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 gis16]-. r16 a16[-. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 b16]-. e,-. d'8-. des16-. | %008
      fis,16(^\mp aes8. g16)-. f-.^\pp^\< ees8-. c16-. bes8-. a16-.^\mp r4 | %009
      r4 r16 des16-.^\pp g-. ges-. bes,8-. ees8(^\< d8. c16~ | %010
      16 b8.~\mp 4) r8 gis8-.^\pp r8 e'8-. | %011
      r8. f16-. cis8-. fis8-. r16 b8.(^\< e16 ees8.~ | %012
      16 f8 g16^\mf d8-.) a-.^\p r16 bes,16-. c8-. r16 des16-. ees-. f16-. | %013
      ges-. aes-. r8 r8. b16-. e-. c8-. d16-. r16 a16-. r8 | %014
      r2 r16 bes16-. r8 r16 g16-.^\< aes-. bes-. | %015
      r16 c,-. des-. f-. ees8-. r8 d-. e-. fis16-. g8.(^\mf | %016
      a,2) b8.( g'16~ 8) bes,16-.^\p e-. | %017
      r16 ges[-. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 c,]-. r8. des16-. ees,2~^\mf | %018
      8. a16(^\> d8 f8~ 16 b16)-.^\p r8 r8. fis,16-.^\< | %019
      g16-. c16-. d16-. e16-. a16-. bes8.--^\mf r16 ees,16[-.^\< r16 f16]-. aes8[-. r16 ces16]-. | %020
      \override Staff.Hairpin.stencil = ##f
      \override Staff.DynamicText.stencil = ##f
      \time 3/4 des8-.\f r8 a16-.\pp gis16-. f8-. b,16( cis8.) |  %021
      d8.-- <ees ees,>16~->\mf <ees ees,>2 | %022
      r8 fis16(\mp\< c16 g8~\mf <g e'>8~ <g e'>16) bes8(\> f16 | %023
      cis8 gis'8 fis16 b,8-.) c16( d8-.)\mp bes16-. e16-. | %024
      r16 g16[-. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 ees16]-. a,4(\< aes4 | %025
      g16\f c8.~ c8) f16_(~ <f a'>16~ <f bes a'>4~ | %026
      <f bes a'>16) cis'16( dis8~ <dis e,>8.) fis,16-. d'8-.\> r8 | %027
      \time 5/8 a'16-. e16-. r8 b16[-. \set stemRightBeamCount = #1 fis16-. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 cis16]-.\p r8 | %028
      c16[(\< ees8.]~ ees8) <bes bes'>4-> | %029
      \time 2/8 <f f'>8[->\f\> <d' d'>8]-> | %030
      \tempo 2=104
      \time 2/2 <g, g'>1\mf\sustainOn \clef treble | %031
      a'''1~ |
      a2 ges2(\sustainOff\sustainOn |
      des4 bes2 c4) |
      gis'4~(\sustainOff\sustainOn \tuplet 3/2 { 8 dis4~ } 2 |
      e2~\sustainOff\sustainOn \tuplet 3/2 { 4 b8~\sustainOff } b4) |
      d2~ \tuplet 3/2 { d4 f8~ } 4~ |
      1 \clef bass |
      g,2 des2~ |
      \tuplet 3/2 { des2~ <des aes'>4~ } 2 |



    }

  }

>>
