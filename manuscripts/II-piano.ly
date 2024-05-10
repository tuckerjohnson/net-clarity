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
  \relative {
    \ottava #1 dis''''4.(\mf c,8~ |
    c8) \ottava #0 r8 g4~ |
    g4 r4 |
    \ottava #1 \tuplet 3/2 { bes''8-.[ \ottava #0 r8 f,8(] } d,4) |
    r2 |
    r2 |
    r2 |
    \ottava #1 e''4. gis,8~ |
    gis4 r8 b8( \ottava #0 |
    \clef bass fis,,,2~  |
    fis8 \clef treble a''8~ 4) |
    d4.\p cis,8\mf |

  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  \relative {
    \clef bass
    b,,2\p |
    r4 \ottava #-1 e,4~( |
    e4 gis |
    a8-.) \ottava #0 r8 r4 |
    des'8~ <des ges,>8~ 4~ |
    8 r8 r4 |
    c2 |
    r2 |
    r8 ees,8( g,-.) r8 |
    f2~ |
    8 bes'8~ 4 |
    r2 |

  }
>>
