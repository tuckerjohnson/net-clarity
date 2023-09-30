% clarity project

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
      \relative {
        \numericTimeSignature
        \tempo "Lento, poco rubato" 4=50
        \time 5/4 r8 f8~\mp 2~ f4. gis8( |
        \time 4/4 <fis cis'>2.) <ais dis>4~ |
        \time 5/4 4 b8( e,~ e2.) |
        r4 <g d'>4( <a c>2.) |
        r4 <f bes>2~ 4. cis'8( |
        \time 4/4 <fis, gis~>4 <gis dis'>2.) |
        \time 3/4 r4 a8( <e b'>~ 4) |
        \clef treble
        \time 4/4 d'4( <c g'>2.) |
        \time 3/4 r8 f8~ <f bes,>4~ 8 dis8( |
        \time 7/8 gis4.) b,4(~ <b e>4) |
        \time 3/4 cis'4.( d,8~ 8)[ g]( |
        \time 7/8 a4. ges,8~ <ges c>~ 4) |
        \time 4/4 r8 f8 fis cis'~ cis bes aes' ees~ |
        2 r4 \tuplet 3/2 { r8 a, e'} |
        r2 \tuplet 3/2 { r8 c'4~-> } 8 \clef bass e,,8 |
        <d g>1~\arpeggio |
        1 |
      }
    >>
  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'mixed
    \accidentalStyle piano
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \relative {
        \numericTimeSignature
        \numericTimeSignature
        \tempo "Lento, poco rubato" 4=50
        \time 5/4 c8(~^\p <c g'>~ <c g' d'>1) |
        \time 4/4 a8(~ <a e'>~ <a e' b'>2.) |
        \time 5/4 fis4. cis'8(~ <cis gis'>2.) |
        ees,8(~ <ees bes'>4~ <ees bes' f'>8~ 2.) |
        c'8(~ <c g'>4~ <c g' d'>8~ <c g' d'~>2 d'4) |
        \time 4/4 a,8(~ <a e'>~ <a e' b'>2.) |
        \time 3/4 fis8(~ <fis cis'>~ <fis cis' gis'>2) |
        \time 4/4 ees8~( <ees bes'>~ <ees bes' f'>2.) |
        \time 3/4 c'8~( <c g'>8~ <c g' d'>2) |
        \time 7/8 a8~([ <a cis>~ <a cis~ fis~>] <cis fis>2) |
        \time 3/4 b8~( <b gis'>~ <b gis' e'>2) |
        \time 7/8 bes8~([ <bes ees>~ <bes ees f'>~] 2) |
        \time 4/4 \tuplet 3/2 { d,8( <b' g'>4~ } 4) \tuplet 3/2 { c,8( <a' e'>4~ } 4) |
        \tuplet 3/2 { des,8( <aes' f'>4~ } 4) \tuplet 3/2 { ees8( <bes' ges'>4~ } 4) |
        b,2~->^\mf \tuplet 3/2 { 8 a'4~-> } 8 r8 |
        <bes, f'>1~\arpeggio |
        1 |
      }
    }
>>
