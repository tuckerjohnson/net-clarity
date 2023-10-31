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
        \clef treble \time 4/4 d'4( <c g'>2.) |
        \time 3/4 r8 f8~ <f bes,>4~ 8 dis8( |
        \time 7/8 gis4.) b,4(~ <b e>4) |
        \time 3/4 cis'4.( d,8~ 8)[ g]( |
        \time 7/8 a4. ges,8~ <ges c>~ 4) | \override TextSpanner.bound-details.left.text = \markup { \upright "Accel." }
        \time 4/4 r8\startTextSpan f8( fis cis') r8 (bes aes' ees~ |
        2) r4 \tuplet 3/2 { r8 a,( e')\stopTextSpan } \bar "||" \tempo "Piu Mosso" 4=65
        r2 \tuplet 3/2 { r8 c'4~-> } 8 \clef bass e,,8 |
        <d g>1~\arpeggio |
        1 |
        R1 |
        r2 ees2~ |
        4 \clef treble <fis cis' gis'>2.~\arpeggio |
        1 |\override TextSpanner.bound-details.left.text = \markup { \upright "Rit." }
        \time 3/4 r4 a'2 \bar "||" \tempo "A tempo" 4=50
        R1*3/4 |
        R1*3/4 |
        R1*3/4 |
        \time 4/4 R1 |
        R1 |
        ees1 |
        des1 \bar "||"
        \time 7/4 r2. \tuplet 3/2 { r4 f'8~( } \tuplet 3/2 { 4 bes,8 } \tuplet 3/2 { ees4) aes,4( des4 } |
        fis,1~ 4) \tuplet 3/2 { r8 fis4->(~ } 4 |
        b1) r4 \tuplet 3/2 { r4 e4( d } |
        c2~ \tuplet 3/2 { 4 a8 } g2.) g4->( |
        \time 4/4 \tuplet 3/2 { f8 bes4~ } 16) a( cis d e8) fis16( g \tuplet 5/4 { b8) c16( ees aes,) } |
        f'2.~ 8 r8 |
        ais,2. <g, g'>8 <d' d'> |
        <a' a'>4. <cis, cis'>8 <gis' gis'>4 <dis dis'>8 <e e'> |
        <fis fis'>2. b8( c,~ |
        4) f2~ 8 aes( |
        <ges des'>2. <ees bes'>4) |
        r8 \clef bass <des,, aes'>8~\arpeggio 2. |
        r8 <bes f'>8~\arpeggio 2. |
        r2 r8 \clef treble \ottava #1 <ees''' aes>4.~( |
        4 <cis e b'>2.) |
        r8 <bes ges'>8~ 2 \ottava #0 r8 <d,, a>8~ |
        1 |
        \stemUp \D <bes, g'>4. \U \stemNeutral des''16(\startTextSpan c \tuplet 3/2 { aes'4) bes,8( } g8) b8\stopTextSpan | \tempo 4 = 50
        r2 \tuplet 3/2 { dis8 fis, dis' } \tuplet 3/2 { fis, dis' fis, } |
        \tempo \markup {
          \concat {
            \rhythm { \tuplet 3/2 { 8 } }
            " = "
            \rhythm { { 8 } }
          }
        } 4 = 75
        dis'8 fis, dis' fis, dis' fis, dis' fis, |
        f' a, f' a, f' a, f' a, |
        \time 3/4 d a d a d a |
        d a d a d a d a |
        \time 3/4 d e, d' e, d' e, |
        d' e, d' e, d' e, d \clef bass e, | \tempo 4 = 50
        r8 f8~ 2 8 aes8( |
        <fis cis'>2.) <bes ees>4~ |
        8 b8( e,2.) |
        r4 <g d'>4( <a c>2) |
        \time 3/4 r4 <f bes>4. cis'8 |
        <fis, gis~>4 <gis dis'>2 |
        r4 r8 a8( <b e,>4) | \clef treble
        r4 c8~ <c g'>~ <c g' d'>4~ |
        \time 4/4 8 f'8~ 2 f8( ees |
        \time 3/4 bes'2.) |
        \time 4/4 r8 bes8~( 4 aes4.) e8( |
        \time 3/4 b'2.) |
        \time 4/4 r8 fis8~( 4 cis'2 |
        \time 3/4 a2.) |
        \time 4/4 r8 g8~( 4 d'2 |
        \time 3/4 c,2.) |
        \time 4/4 <ges f' bes>2.( <ees aes des>4) |
        R1 |
        R1 |
        \time 3/4 R1*3/4 |
        \time 7/8 R1*7/8 |
        \time 3/4 R1*3/4 |
        \time 7/8 R1*7/8 | \clef bass
        \time 3/4 r8 f,4( bes8 ees4) |
        \time 4/4 r2 r8 c,8~ 4~ |
        \time 5/4 8 r8 r4 r8 b'8~ <b e,>2 |
        r2 gis8~ <gis cis>~ 2 |
        \time 4/4 fis2 r2 |
        \time 5/4 r4 g4~ 8~ <g d>~ 2 |
        a2.~ 2 \bar "|."
      }
    >>
  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'bracket
    \accidentalStyle piano
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \relative {
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
        \time 4/4 \tuplet 3/2 { d,8 <b' g'>4~ } \tuplet 3/2 { 8 4 } \tuplet 3/2 { c,8 <a' e'>4~ } \tuplet 3/2 { 8 4 } |
        \tuplet 3/2 { des,8 <aes' f'>4~ } \tuplet 3/2 { 8 4 } \tuplet 3/2 { ees8 <bes' ges'>4~ } \tuplet 3/2 { 8 4 } |
        \tempo "Piu Mosso" 4=65 b,2~->^\mf \tuplet 3/2 { 8 a'4~-> } 8 r8 |
        <bes, f'>1~\arpeggio |
        1 |
        r2 <c g'>2~\arpeggio |
        1~ |
        4 d,2.~ |
        4~ <d b''>2.
        \time 3/4 b'8~( <b e'>8~ 2) |
        c'8~( <c g'>~ <c g' d'>2) |
        ees,8~( <ees bes'>~ <ees bes' f'>2) |
        gis8( fis'~ <fis cis'>2) |
        \time 4/4 a,8~( <a d>~ <a d b'>2.) |
        g8~( <g e'>4.~ 8) c'4.\pp |
        \U \tuplet 3/2 { ees8( \D bes\< ges } \tuplet 3/2 { bes ges bes } \tuplet 3/2 { ges\p\> bes ges } \tuplet 3/2 { bes ges bes)\pp } |
        \U \tuplet 3/2 { des8( \D aes\< f } \tuplet 3/2 { aes f aes } \tuplet 3/2 { f aes f } \tuplet 3/2 { aes f aes)\mp } |
        <<
          \relative {
            \voiceOne
            \time 7/4 a8[(\f c, a' c, a' c, a' c,] a'[ c, a' c, a' c,]) |
            g'8[( b, g' b, g' b, g' b,] g'[ b, g' b, g' b,]) |
            ges'8[( aes, ges' aes, ges' aes, ges' aes,] ges'[ aes, ges' aes, ges' aes,]) |
            f'8[( bes, f' bes, f' bes, f' bes,] f'[ bes, f']) r8 r4 |
          }
          \new Voice \relative {
            \voiceTwo
            \time 7/4 e,2.~ 8 8->~ 2. |
            d2.-> d1~-> |
            d8 ees8->~ 2.~ 4 2-> |
            des2.->~ 8 8->~ 2. |
          }
        >>
        \oneVoice
        \time 4/4 \tuplet 3/2 { b,,8( fis'4~ } 16) g( aes ees' c8) bes16( d \tuplet 5/4 { f8) e16( a cis,) } |
        gis'2.~ 8 r8 |
        \tuplet 5/4 { dis8~ <dis fis,>~ <dis fis, b,>4.~ } 2 |
        <c, e'>2\arpeggio \tuplet 3/2 { d8~ <d bes'>~ <d bes' f'>~ } 4 |
        <d a'>2.~ 8 des8~ |
        4 <c g' d'>2.\arpeggio |
        <a e' b'>1\arpeggio |
        fis1 |
        ees1 |
        g2~ 8 r8 r4 |
        R1 |
        R1 |
        \tuplet 3/2 { c'4~ <c f,,>8~ } 2. |
        \stemDown ees,,4. \stemNeutral b'''16( gis \tuplet 3/2 { e8) a,( d } fis,16) c'( f, des) |
        a'4~ <a e'>~ <a e' b'>2~ |
        4 d4.~ <d g,>4. |
        c,1 |
        \time 3/4 ees4.~ <ees bes'>~ |
        \time 4/4 <ees bes' f'>1 |
        \time 3/4 fis4.~ <fis cis'>~ |
        \time 4/4 <fis cis' gis'>1 |
        c'8~ <c g'>~ <c g' d'>2. |
        a8~ <a e'>~ <a e' b'>2. |
        fis4 cis'8~ <cis gis'>8~ 2 |
        ees,8~ <ees bes'>4~ <ees bes' f'>8~ 2 |
        \time 3/4 c'8~ <c g'>4~ <c g' d'~>8 d'4 |
        a,8~ <a e'>~ <a e' b'>2 |
        fis8~ <fis cis'>~ <fis cis' gis'>2 |
        ees8~ <ees bes'>~ <ees bes' f'>2 |
        \time 4/4 r4 \tuplet 3/2 { r8 c''4~\sustainOn } \tuplet 3/2 { 4 d,8~ } 4 |
        \time 3/4 g,,2. |
        \time 4/4 a2~\sustainOff \tuplet 3/2 { 4 cis'8~ } 4\sustainOn |
        \time 3/4 fis'2. |
        \time 4/4 r4\sustainOff \tuplet 3/2 {r8 b,4~\sustainOn } \tuplet 3/2 { 4 e,,8~ } 4 |
        \time 3/4 gis,2. |
        \time 4/4 bes4~\sustainOff\sustainOn \tuplet 3/2 { 8 ees'4~ } 2 |
        \time 3/4 f'2.\sustainOff |
        \time 4/4 r4 <a,, d g>4 <b c, e,>2 |
        cis,16~ <cis gis'>~ <cis gis' fis'>8~ 4 ees16~ <ees bes'>~ <ees bes' f'>8~ 4~ |
        8 b8( a'4~ <a e'>2) |
        \time 3/4 bes,8~ <bes f'>~ <bes f' d'>2 |
        \time 7/8 c8~ <c g'>8~ 4 ees'4. |
        \time 3/4 fis,8~ <fis cis'>4~ <fis cis' gis'>8~ 4 |
        \time 7/8 b,8~ <b a'>4~ <b a' e'>2 |
        \time 3/4 c'8~ <c g'>~ <c g' d'>2 |
        \time 4/4 ees,8~ <ees bes'>4~ <ees bes' f'>8~ 2 |
        \time 5/4 gis4. cis8~ <cis fis>2. |
        b8~ <b e>4.~ <b e a>2. |
        \time 4/4 d4~ <d g> c2 |
        \time 5/4 f,8~ <f bes>8~ 4~ 8~ <f bes ges'>8~ 2 |
        cis'4~ <cis gis'>~ 8~ <cis gis' dis'>8~ 2 \bar "|."
      }
    }
>>
