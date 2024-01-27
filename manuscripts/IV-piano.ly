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
    \override DynamicLineSpanner.staff-padding = \phds
    \accidentalStyle piano
    <<
      \relative {
        \numericTimeSignature
        \tempo \markup { "Giusto e giocoso" } 4=104
        \time 5/4 R1*5/4 | %1
        \time 4/4 r16 bes'8.~( 2~ 8 f'8~ | %2
        f2~ 8 ges8~ 4 | %3
        ees4~ 8) 16( aes,16~ 2~ | %4
        8) r8 r4 r4 r16 cis8.~( | %5
        1~ | %6
        \time 5/4 4~ 16 c8.~ 16 g'8.~ 2) | %7
        \time 4/4 R1 | %8
        r2 r4 r16 d16( e8 | %9
        b1~ | %10
        4~ 8) 8~( 8. a16~ 4~ | %11
        4)

      }
    >>
  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'mixed
    \accidentalStyle piano
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \override DynamicLineSpanner.staff-padding = \phds
    \relative {
        \numericTimeSignature
        \tempo \markup { "Giusto e giocoso" } 4=104
        \time 5/4 r16 f'16-. aes,8 r8 fis8-. dis'8[-. r16 cis16]-. r4 r4 | %1
        \time 4/4 b8-. r8 a8-. c,8-. g'8-. e16-. d16-. r8. bes'16-. | %2
        cis16-. gis8-. b16-. r8. a16-. r4 r16 e'16-. r8 | %3
        r16 d16-. g,16-. c16-. r4 bes16-. ees,16 f8-. ges8-. r8 | %4
        b16-. a-. g8-. g8 e'8-. cis[-. r16 d16]-. c8-. r8 | %5
        \clef treble ees16-. f8-. fis16-. gis8-. ais8( b)-. c16( d16~ 16 e a,
        g16~ | %6
        \time 5/4 g8. ges16~ 8 f8~ 2.) | \clef bass %7
        \time 4/4 r8 cis16-. dis16-. r16  ais16-.[ \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1 r16 gis16]-. r16 a16[-. \set
        stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 b16]-. e,-.
        d'8-. des16-. | %8
        fis,16( aes8. g16)-. f-. ees8-. c16-. bes8-. a16-. r4 | %9
        r4 r16 des16-. g-. ges-. bes,8-. ees8( d8. c16~ | %10
        16 b8.~ 4) r8 gis8-. r8 e'8-. | %11
        r8. f16-. cis8-. fis8-. r16 b8.( e16 ees8.~ | %12
        16 f8 g16 d8-.) a-. r16 bes,16-. c8-. r16 des16-. ees-. f16-. | %13

      }
    }
>>
