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
      \time 2/2
      R1 | R1
      \time 3/2
      R1*3/2 |
      R1*3/2 |
      \time 3/4
      R1*3/4 |
      \time 5/8
      R1*5/8 |
      \time 2/2
      R1*2/2 |


      }
    >>
  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'mixed
    \accidentalStyle piano
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \relative { \numericTimeSignature
      <<
	\relative {
	  \voiceOne
	  \time 2/2
	  <c c'>2^\pp <ees c'> | <ees g> <d g> |
	  \time 3/2
	  <des g>1~ 4 \afterGrace r4 { g8 } |
	  <g c>2 \afterGrace <f c'> { ges8 } <f c'>2 |
	  \time 3/4
	  \afterGrace 15/16 <ees c'>2. { d8 } |
	  \time 5/8
	  <d b'>2 <e cis'>8
	  \time 2/2
	  <ees g c>2 <d b'>2 |
	}
	\new Voice \relative { \numericTimeSignature
	  \voiceTwo
	  \time 2/2
	  aes,,2 aes | bes bes |
	  \time 3/2
	  ces1~ 4 r4 |
	  aes'2 aes bes |
	  \time 3/4
	  bes,2. |
	  \time 5/8
	  fis'2 a8
	  \time 2/2
	  bes2 s2 |
	}
      >>
    }
  }
>>
