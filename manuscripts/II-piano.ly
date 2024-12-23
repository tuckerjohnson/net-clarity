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
        \time 5/8 r4\f ees'8[ bes']-.-> r8 | %001
        \time 4/4 \grace { s8 } r4 d\> a'8( cis4.)\mp | %002
        \time 5/8 \grace { s8 } s4 r8 r4 | %003
        \time 6/8 f,4 \grace { des'8^( } ges,8-.) r4.\f r4. c,4 e'8->-. | %004-005
        r4.\mp r8 ees,4( | %006
        \time 5/8 g8-.) r8 b4( aes8-.) | %007
        \time 4/4 r4\f des,~ <des bes'>8-.-> r8 r4 | %008
        \time 3/8 r8 r8 d'8-.-> | %009
        \time 3/4 r4\p \D \grace { a,8( } \U ges'4) f'8-. r8 | %010
        \time 4/4 r4\< r8 b,,8 r2\f | %011
        \time 5/8 g''8 r8 r8 a,,4 | %012
        \time 4/4 aes'8-. r8 e4 c'8-.->\< r8 r4 | %013
        r8 ees8--->\f r4 r2  | %014
        \time 7/8 \after 4 \p f,,2~-> f4 r8 |
        \time 4/4 c'4 b'8 r8 r8 a4. |
        \time 7/8  ees4 \D \once \showStaffSwitch \grace { gis,,8( } fis4) \once \showStaffSwitch \U \grace { ees''8( } g8) e'8-. r8 |
        \time 4/4 d,4 f8 cis'-. r4 \grace { f,8( } bes,4) |
        \grace { cis'8( } fis,8-.) r8 \D aes,,8 \U g'8~-> g2~ |
        g4 ees2.~-> |
        <ees bes>4 r4 r8 f'8-. r4 |
        aes,4 ees''8 r8 r4 r8 e,8~\mf |
        \time 6/8 e4.\< \D \once \showStaffSwitch ees,,8 \once \showStaffSwitch \U r8 fis''8 |
        r8 cis8 a r4.\f |
        c,4\> g4 |
        \after 2. \p R1\! |
        \time 6/8 R1*6/8
        \after 4. \mp \after 2 \< R1*6/8
        r8 bes8-.-> des-.-> f-.-> r8 fis-.->\f |
        R1*6/8
        \time 4/4 R1 |
        d8-.->\mf\< bes a'-.-> r8 des,8 ees-.-> g-.->\f aes, |
        c'8-.-> r8 r4 r2 |
        R1 |
        \time 9/8 R1*9/8 |
        \time 4/4 gis8-.-> e-.-> b'-.-> r8 r2 |
        R1 |
        <<
          \relative {
            \voiceOne
            g''8-. r8 r8 g8-. r8 g8[-. aes]~ |
            aes1~ |
            4~ 8 r8 d8( des8-.) |
            r8 r8 des8-. ges,4. |
            ges4 ges8-. r4. |
            r4 c8-. r8 c,8-. r8 |
          }
          \new Voice
            \relative {
            \voiceTwo
            \time 7/8 b'8-. r8 r8 bes8-. r8 bes[-. bes]~
            \time 4/4 bes1~ |
            \time 3/4 4~ 8 r8 a8( e8-.) |
            \time 6/8 r8 r8 e8-. e4. |
            ees4 ees8-. r4.
            \time 3/4 r4 ees8-. r8 f8-. r8 |
          }
        >>
        \oneVoice
        r4 r4 r8 c'8~ |
        c4 c8( d,8~ d4~ |
        d8 cis'-.) r4 r4 |
        R1*3/4 |
        <<
          \relative {
            \voiceOne
            r4 g'''4. g8~( |
            g4 aes,2~ |
            aes2 fis'8-.) r8 |
          }
          \new Voice
          \relative {
            \voiceTwo
            r4 c''8-. c8~( c4~
            c2 d,4~ |
            d4 cis'8-.) r8 r4 |
          }
        >>
        \oneVoice
        r4 r4 r8 b,8-. |
        r8 f''8-. r4 r8 ees,8~->( |
        ees4 c'8-.) r8 c8-. r8
        r8 c8-. r4 cis,8-. r8 |
        r4
        <<
          \relative {
            \voiceOne
            r4 r8 e'''8-. |
          }
          \new Voice
          \relative {
            \voiceTwo
            r8 gis''8~( gis4 |
            ais,8-.)
          }
        >>
        \oneVoice
        r8 bes8-. r8 r4
        r8 g'8~->( g8 d'-.) r4 |
        g,,8-. r8 r4 r4 d'4.( e,8-.) r4 |
        r8 bes''8-. r8 aes'8~( aes des,8-.) |
        R1*3/4
        r4 r4 b8-. r8 |
        r4 fis'8( a,8-.) r4 |
        a8-. r8 r4 r8 c8-. |
        r4 \after 8 \p r4 e,8-. r8 |
        R1*3/4 |
        aes,8-. r8 r4 r4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        e8-. gis8-. r4 r4 |
        r4 r8\fermata <bes bes,>8-.\pp r4 |
<<<<<<< HEAD
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        <f' f'>8-.-> <g g'>8-.-> r8 <a a'>-.-> r4 |
        R1*3/4 |
        r4 r4 \ottava #1 <fis' fis'>8-.-> r8 |
        <gis gis'>8-.-> r8 <ais ais'>8-.-> r8 r4 |
        8-.-> <b, b'>8-.-> r8 <cis cis'>8-.-> r4 |
        r8 <ees ees'>8-.-> r4 r4 |
        R1*3/4 |
        r8 e4( b'8) 8( cis) |
        8( dis) r8 <c, c'>8-.-> <d d'>8-.-> 8-.-> |
        r8 <e e'>8-.-> \ottava #0 r4 r4 |
        \ottava #1 \tuplet 3/2 { f'8\p\< \D <f, g> \U <f' g a> } \tuplet 3/2 { \D ges, \U ges' \D <ges, aes> } \tuplet 3/2 { \U <ges' aes> \D <ges, aes bes>\! \U <ges' aes bes> } \bar "||" | \clef "bass"
        \tempo "A tempo" 4=168
        \ottava #0 s4\f s4 s4\mp |

=======
>>>>>>> e692014 (start)



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
        b4\f r8 r4 | %001
        \time 4/4 \grace { ees8( } c4) r4 r2 | %002
        \time 5/8 \grace { b8(\mp } e,8) \U g' \D r8 aes,4 | %003
        r4. a4\f bes8 | %004
        f'-> d8-.-> r8 r4. | %005
        \grace { a8(\mp } fis4) cis' r4 | %006
        R1*5/8 | %007
        c2~\f 8 r8 a'4~-> | %008
        <a e>~ 8 | %009
        aes4\p r4 r4 | %010
        ees,8 g4\< r8 f4\f ges'4 | %011
        r8 bes,4 r4 | %012
        r8 d,8 r4 r4\< \grace { a''8( } cis,4) | %013
        \time 4/4 \U \grace { e'8( } \D b8) r8\f r4 r2 | %014
        r4 des,4\p aes d8~-> |
        d2 bes2~-> |
        bes~ bes4.~ |
        bes2 c2~-> |
        c4. r8 r8 \clef treble a''8 r8 \clef bass \grace { gis,,8( } b8) |
        e,4 r8 d8~ d8 \clef treble b''4  c'8 |
        r4 \clef bass des,,4~-> des4. ges,8~-> |
        ges2~ <ges f>8 a4.~-> |
        \time 6/8 a2 b4-> |
        e,4.-> gis~-> |
        gis2~ gis8 r8 r4 r4 ees,4~\p |
        \time 6/8  ees2. |
        g8( c,8-.) r8 d'~\mp\< <d fis>~ <d fis a>~ |
        8 r8 r8\f r8 b,8-. r8 |
        r8 gis'4~( gis4. |
        f'8-.) r8 r4 r2 |
        r4 e,8-. r8 r4 bes4~ |
        bes8 r8 r4 r4 r8 f'8~(-> |
        f2~ f8 des8-.) r4 |
        R1*9/8 |
        r4 fis4~( fis4. d8 |
        a8) r8 r4 r2 |
        s1*7/8
        s1
        s1*3/4
        s1*6/8
        s1*6/8
        s1*3/4
        r4 e''4(\mf\> f,8-.)\! r8 |
        r8 b8-. r4 r8 \clef treble g''8~ |
        g4 g4( fis'4~ |
        fis8) fis8( aes,8-.) r8 r4 \clef bass |
        ees,8-. r8 r4 r4 |
        r8 bes8~( bes2~ |
        bes8 a'-.) r4 r4 |
        e,8-. d'4->( g,8-.) r4 |
        r4 r8 \clef treble ges''8~( ges4~ |
        ges2.~ |
        ges8 a'-.) r4 r4 \clef bass |
        dis,,,8-. r8 r4 r4 |
        r4 c'8->( f,8-.) r4 |
        R1*3/4 |
        b,8-. r8 b8-. r8 a'4~ |
        4 8( fis8-.) r4 |
        <fis e'>8-. r8 r4 r4 |
        r4 ees8-. r8 c'4~ |
        c8 des,8-. des8-. r8 r4 |
        aes'2~ aes8 <aes c>->( |
        <f bes>8-.) r8 r4 d8-.^\p\sustainOn r8 |
        r4 r8 g8-. r4 |
        r4 r4 r8 fis8-.\sustainOff\sustainOn |
        r4 bes8-. r8 ees,8-. b-. |
        des,8-.\sustainOff\sustainOn r8 r4 r4 |
        r4 r4 r8 f8-. |
        a8-. r8 r4 r4 |
        R1*3/4 |
        r8 d8-.\sustainOff\sustainOn r4 r8 fis8-. |
        R1*3/4 |
        bes8-. r8 r4 r4 |
        r4 c8-.\sustainOff\sustainOn r8 r4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4\sustainOff |
<<<<<<< HEAD
        R1*3/4 |
        R1*3/4 | \clef treble
        r8 ges'8( aes) aes( bes) r8 |
        R1*3/4 |
        r8 bes8-. r8 f'8~ 4 |
        f2.~ |
        f8 f4 f8( g a8~ |
        a2) a8( c8-.) |
        r8 c8-. r8 c8( d8) d8( |
        e2.) |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        R1*3/4 | \clef "bass_8"
        \stemUp d,,,,,8[(^\f g] \U ees'-.)[ \D bes,]-.
      }
=======
             }
>>>>>>> e692014 (start)
    >>
  }
>>
