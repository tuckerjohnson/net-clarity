% river project

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
      \time 4/2
      <c c'>2\pp <ees c'> <ees g> <d g>
      \time 3/2
      <des g>1~ 4 r8. g16 |
      <g c>2 <f c'>4.. ges16 <f c'>2 |


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
      \time 4/2
      aes,,2 aes bes bes |
      ces1~ 4 r4 |
      aes'2 aes bes |
      }
    >>
  }
>>
