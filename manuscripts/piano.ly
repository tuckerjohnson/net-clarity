% clarity project

\new PianoStaff \with {
  instrumentName = \markup { "piano " }
}
<<
  \set PianoStaff.connectArpeggios = ##t
  \override PianoStaff.Arpeggio.arpeggio-direction = #UP
  \new Staff = "u" \with { \consists "Merge_rests_engraver" }
  {
    \accidentalStyle piano
    <<
      \relative { \numericTimeSignature
      \tempo Largo 2=92
      \time 2/2
      s1 | s1
      \time 3/2
      s2 s2 s2 |
      s2 s2 s2 |
      \time 3/4
      \tuplet 3/2 { r8 r8 a''8( } \tuplet 3/2 { e f4~ } f4) |
      \time 5/8
      s4 s4 s8 |
      \time 2/2
      s1 |
      s1 |
      s1 |
      s1 |
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
	  <des g>1~ 4 \afterGrace r4 { g8_( } |
	  <g c>2) \afterGrace <f c'> { ges8_( } <f c'>2) |
	  \time 3/4
	  \afterGrace 15/16 <ees c'>2. { d8_( } |
	  \time 5/8
	  <d b'>2) <e cis'>8
	  \time 2/2
	  <ees g c>2 <gis b>2~ |
	  \afterGrace 15/16 1\fermata { ees'8( } |
	  <ees g,>1) |
	  <bes g>1\fermata |

	}
	\new Voice \relative { \numericTimeSignature
	  \voiceTwo
	  \time 2/2
	  aes,2 aes | bes bes |
	  \time 3/2
	  ces1~ 4 r4 |
	  aes2 aes bes |
	  \time 3/4
	  bes2. |
	  \time 5/8
	  fis2 a8
	  \time 2/2
	  bes2 d2~ |
	  1 |
	  f,1 |
	  e1 |

	}
      >>
    }
  }
>>
