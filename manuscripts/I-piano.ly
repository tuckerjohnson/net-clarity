% net clarity project

\new PianoStaff \with {
  instrumentName = \markup { "piano " }
  shortInstrumentName = \markup { "pno " }
  \consists Text_mark_engraver
}
<<
  \set PianoStaff.connectArpeggios = ##t
  \override PianoStaff.Arpeggio.arpeggio-direction = #UP
  \new Staff = "u" \with { \consists "Merge_rests_engraver" }
  {
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
      s1 |
      \time 3/8
      s8 s8 s8 |
      \time 1/4
      \tuplet 3/2 { r8 des4\fermata } |
      \time 2/2 \clef bass
      <<
	\relative {
	  \voiceOne
	  c'4 bes s2 |
	  s2  des2 |
	}
	\new Voice \relative {
	  \afterGrace 12/16 e2 { \stemDown f8( } \afterGrace 15/16 <f aes>2) { \stemDown des'8^( } |
	  <aes des>2) g4 f |
	}
      >>
      \oneVoice
      c,1\fermata |
      }
    >>
  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'mixed
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
	  \afterGrace 15/16 <bes g>1\fermata { \stemDown c8( } |
	  \stemUp <aes c>2) <ees c'> |
	  \time 3/8
	  <fis b>4 <e c'>8~ |
	  \time 1/4
	  4 |
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
	  ges2 f2 |
	  \time 3/8
	  a,4 d8~ |
	  \time 1/4
	  d4 |
	}
      >>
      \oneVoice
      g,2 <d~ b'>2 |
      d2 bes'2 |
      ees1\fermata |
    }
  }
>>
