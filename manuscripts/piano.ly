%cowbell project

\new PianoStaff \with {
  instrumentName = \markup { "piano " }
}
<<
  \set PianoStaff.connectArpeggios = ##t
  \override PianoStaff.Arpeggio.arpeggio-direction = #UP
  \new Staff = "u" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \accidentalStyle piano
    <<
      \relative { \numericTimeSignature
      \time 7/2
      <c c'>2 <ees c'> <ees g> <d g> <des g>2~ 2. r8. g16 |
      <g c>2 f4.. ges16 <f c'>2 |


      }
    >>
  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'mixed
    \accidentalStyle piano
    <<
      \relative { \numericTimeSignature
      \time 7/2
      aes,,2 aes bes bes ces~ 2. r4 |
      aes'2 aes bes |
      }
    >>
  }
>>
