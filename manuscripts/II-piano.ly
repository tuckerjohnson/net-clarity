% root = ../net-clarity.ly

\new PianoStaff \with {
  instrumentName = \markup { "piano" }
  shortInstrumentName = \markup { "pno " }
  \consists Text_mark_engraver
  \consists Metronome_mark_engraver
}
<<
  \numericTimeSignature
  \set PianoStaff.connectArpeggios = ##t
  \override PianoStaff.Arpeggio.arpeggio-direction = #UP
  \new Staff = "u" \with {
    \consists "Merge_rests_engraver"
  }
  {
    <<
      \relative {
        \tempo "Vivace" 4=168
        \override DynamicLineSpanner.staff-padding = \phds
        \time 2/4 r4\f r8 ees'8 | %001
        \time 6/8 bes'8-.-> r8 r8 r4. | %002
        \time 3,2,2 7/8 d4.\> a'8-. cis8~\mp cis4~ | %003
        \time 4/4 cis8 r8 g,8-. r8 r2 | %004
        f'4. \grace des'8( ges,8) r2\f | %005
        \time 6/8 f,8-> d8-.-> r8 c'4 e'8-.-> | %006
        \time 9/8 \grace s8 r4.\mp r4. ees,4.( | %007
        \time 3/4 g8-.) r8 b4( aes8-.) r8\f | %008
        \time 4/4 r8 des,8~ des4~ <des bes'>8->-. r8 r4 | %009
        r4 r8 d'8-.-> r4\p \D \grace a,8( \U ges'4) | %010
        \time 5/8 f'8-. r8 r8 r4\< | %011
        \time 3/4 r8 b,,8 r4\f r4 | %012
        g''8 r8 r8 a,,4 aes'8-. | %013
        \time 4/4 r8\mp\< e4 c'8-.-> r2 | %014
        ees8--\f r8 r4 r4 f,,4-> | %015

      }
    >>
  }
  \new Staff = "d"
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'bracket
    <<
      \relative {
        \tempo "Vivace" 4=168
        \override Staff.Hairpin.stencil = ##f
        \override Staff.DynamicText.stencil = ##f
        \time 2/4 b4~\f b8 r8 | %001
        \time 6/8 r4. \grace ees8( c4.) | %002
        \time 3,2,2 7/8 R1*7/8 | %003
        \time 4/4 r8 \grace b8( e,8)\mp r4 r8  aes8~ aes4 | %004
        r2 a4.\f bes8 | %005
        \time 6/8 R1*6/8 | %006
        \time 9/8 \grace a8( fis4.)\mp cis'4. r4. | %007
        \time 3/4 r4 r4 r8 c8~\f | %008
        \time 4/4 c2~ c8 r8 r8 a'8~ | %009
        a8~ <a e>8~ 4 aes4\p r4 | %010
        \time 3,2 5/8 r4. ees,8\< g8~ | %011
        \time 3/4 g8 r8 f4\f ges'4 | %012
        r8 bes,4 r8 r4 | %013
        \time 4/4 d,8\mp\< r8 r4 r8 cis'4 \U \grace e'8( \D b8) | %014
        R1\f | %015

      }
    >>
  }
>>
