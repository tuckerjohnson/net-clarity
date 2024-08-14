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
  \new Staff = "u"
  {
    <<
      \relative {
        \tempo "Vivace" 4=144
        \time 5/8 s4\f ees'8[ bes'] r8 |
        \override DynamicLineSpanner.staff-padding = \phds
        s4 d a'8( cis4.) |
        s4 r8 s4 f,4  ges8 |
        \time 2/4 s2
        \time 5/8 s4 c,4 e'8 |
        s4 s4 ees,8 r8 |
        \time 5/8 g4 b( aes8) |
        s4 des, bes'
        \time 5/8 s4 s4 d8 |
        \time 3/4 s4 ges,4 f' |
        \time 2/4 s8 s4 b,,8 |
        \time 5/8 s4 s4 g''8 |
        s4 a,,4 aes'8 |
        s8 e4 c' |
        s4 s8 ees4 |
        \time 4/4 R1 |
        \time 7/8 f,,2~-> f4 r8 |
        \time 4/4 c'4 b'4 r8 a4. |
        \time 7/8 ees4 \D \once \stemUp fis,, \U g''8 e'4 |
        \time 4/4 d,4 f8 cis' r4 bes,4 |
        fis'8 r8 \D aes,,8 \U g'8~-> g2~ |
        g4 ees2.~-> |
        <ees bes>4 r4 r8 f'8 r4 |
        aes,4 ees''8 r8 r4 r8 e,8~ |
        \time 6/8 e4. \D ees,,8[ \U r8 fis''8] |
        r8 cis8 a r4. |
        \D c,8 \U f' \D g,, \U bes'' |
        d2\fermata r4 aes4 |
        \time 6/8 R1*6/8 |
        R1*6/8
        \time 2/4 r8 bes,,8( des  f |
        \time 5/4 fis1) r4 |
        \time 4/4 d1 |




      }
    >>
  }
  \new Staff = "d"
  {
    \clef bass
    <<
      \relative {
        \tempo "Vivace" 4=144
        b4 s4 r8 |
        c4 s4 s2 |
        e,8 \U g' \D r8 aes,8~ aes s4 s8 |
        a4 bes8 f' |
        d4 s4 s8 |
        fis,4 cis' s8 r8 |
        s4 s4. |
        c4 s4 s4 |
        a'4 e s8 |
        aes4 s4 s4 |
        ees,8 g4 s8 |
        f4 ges'4 s8 |
        bes,4 s4 s8 |
        d,8 s4 s4 |
        cis'4 b'8 s4 |
        f1 |
        r4 des4 aes d8~-> |
        d2 bes2~-> |
        bes~ bes4.~ |
        bes2 c2~-> |
        c4. r8 r8 \clef treble a''8 r8 \clef bass b,,8 |
        e,4 r8 d8~ d8 \clef treble b''4  c'8 |
        r4 \clef bass des,,4~-> des4. ges,8~-> |
        ges2~ <ges f>8 a4.~-> |
        \time 6/8 a2 b4-> |
        e,4.-> gis~-> |
        gis2~ gis2\fermata r4 ees,4~
        ees2. | g8( c,4~ c4.) |
        R1*2/4 |
        b4.~( <b gis'>8~ 2.) |
        R1 |

      }
    >>
  }
>>
