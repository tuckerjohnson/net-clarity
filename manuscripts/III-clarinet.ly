% river project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \phds
}
\relative {
  \numericTimeSignature
  \clef treble
  \tempo "Lento, poco rubato" 4=50
  \time 5/4 R1*5/4 |
  \time 4/4 R1 |
  \time 5/4 R1*5/4 |
  R1*5/4 |
  R1*5/4 |
  \time 4/4 R1 |
  \time 3/4 R1*3/4 |
  \time 4/4 d'4(\mp c2.~ |
  \time 3/4 c8) r8 r4 r8 dis8~ |
  \time 7/8 4. b4( e |
  \time 3/4 cis'2) r8 g8( |
  \time 7/8 a4. ges,2) |
}
