% net clarity project

\new PianoStaff \with {
  instrumentName = \markup { "piano " }
  shortInstrumentName = \markup { "pno " }
  \consists Text_mark_engraver
}
<<
  \override PianoStaff.Arpeggio.arpeggio-direction = #UP
  \new Staff = "u" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set PianoStaff.connectArpeggios = ##t
    \override DynamicLineSpanner.staff-padding = \phds
    <<
      \relative {
        \numericTimeSignature
        \tempo \markup { "Lento, poco rubato" } 4=50
        \time 5/4 r8\p_\markup { \tiny \italic "legato" } f8~^\markup { \tiny \italic "piu" \dynamic f } 2~ f4. gis8( |
        \time 4/4 <fis cis'>2.) <ais dis>4~-> |
        \time 5/4 4\mp\> b8( e,~ e2.)\p |
        r4 <g d'>4( <a c>2.) |
        r4 <f bes>2~ 4. cis'8(->\mp\> |
        \time 4/4 <fis, gis~>4 <gis dis'>2.)\p |
        \time 3/4 r4 a8( <e b'>~ 4) |
        \clef treble \time 4/4 d'4(\mp <c g'>2.) |
        \time 3/4 r8 f8~\> <f bes,>4~ 8 dis8( |
        \time 7/8 gis4.)\p b,4^(~ <b e>4) |
        \time 3/4 cis'4.(\< d,8~ 8)[ g]( |
        \time 7/8 a4. ges,8~[\mp <ges c>~] 4) |
        \time 4/4 \pocAce r8\p\<\startTextSpan_\markup { \tiny \italic "quasi-waltz" } f8( fis cis') r8 bes( aes' ees~\mf |
        2)\mp\< r4 \tuplet 3/2 { r8 a,(\f\> e')\stopTextSpan } \bar "||"

        \sectionLabel \markup { \box \number 15 }

        \tempo "Piu Mosso" 4=65
        r2\mf \tuplet 3/2 { r8 c'4~-> } 8 \clef bass e,,8 |
        r8 d16~ <d g>16~ 2.~ |
        1 |
        R1 |
        r2 ees2~\p |
        4 \clef treble <fis cis' gis'>2.~\mp\arpeggio |
        1 |
        \time 3/4 \rit r4\mf\startTextSpan \after 4. \stopTextSpan a'2 \bar "||"

        \sectionLabel \markup { \box \number 23 }

        \tempo "A tempo" 4=50
        R1*3/4\p |
        R1*3/4 |
        R1*3/4 |
        \time 4/4 R1 |
        R1 |
        ees1 |
        des1 \bar "||"

        \sectionLabel \markup { \box \number 30 }
        \tempo \markup {
          \concat {
            \rhythm { \tuplet 3/2 { 8 } }
            " = "
            \rhythm { { 8 } }
          }
        } 4 = 75

        \time 7/4 r2 r4 \tuplet 3/2 { r4 f'8~(^\markup { \tiny \italic "piu" \dynamic f \tiny \italic "misterioso" } } \tuplet 3/2 { 4 ais,8 } \tuplet 3/2 { dis4 gis,4 cis4) } |
        fis,1~ 4 \tuplet 3/2 { r8 fis4->(~ } 4 |
        b1) r4 \tuplet 3/2 { r4 e4( d } |
        c2~ \tuplet 3/2 { 4 a8 } g2.) g4-- |
        \time 4/4 \tuplet 3/2 { f8_(\mf bes4~ } 16) a(\< cis d e8) fis16( g \tuplet 5/4 { b8)\ff\> c,16( ees aes) } |
        f'2.~\mf 8 r8 |

        \sectionLabel \markup { \box \number 36 }
        \set PianoStaff.connectArpeggios = ##f

        ais,2.--\f_\markup { \italic \tiny "maestoso" } <g, g'>8\arpeggio <d' d'>\arpeggio |
        <a' a'>4.\arpeggio <cis, cis'>8\arpeggio <gis' gis'>4\ff\>\arpeggio \tuplet 3/2 { <dis dis'>8 <e e'> <fis fis'>8~\mf } |
        <fis fis'>2. b8( c,~ |
        4) f2~ 8 aes(\> |
        <ges des'>2. <ees bes'>4)\mp |
        r8 \clef bass <des,, aes'>8~\arpeggio 2. |
        r8 <bes f'>8~\arpeggio 2. |
        r2 r8 \clef treble \ottava #1 <ees''' aes>4.~(\p |
        4 <cis e b'>2.) |
        r8 <bes ges'>8~ 2 \ottava #0 r8 \clef bass <d,, a>8~\mf |
        <d a c,>1 |
        g,4. \clef treble des''16(\> c \rit \tuplet 3/2 { aes4)\startTextSpan bes8( } g8) \after 16 \stopTextSpan b8 \bar "||"

        \sectionLabel \markup { \box \number 48 }

        \tempo 4 = 50
        r2\mp \tuplet 3/2 { r8 fis\ppp\< dis' } \tuplet 3/2 { fis, dis' fis, } \bar "||"
        \tempo \markup {
          \concat {
            \rhythm { \tuplet 3/2 { 8 } }
            " = "
            \rhythm { { 8 } }
          }
        } 4 = 75
        dis'8\mp\< fis, dis' fis, dis' fis, dis' fis, |
        f'\mf\> a, f' a, f' a, f' a, |
        \time 3/4 d\< a d a d a |
        d\f\> a d a d a d a |
        \time 3/4 d\< e, d' e, d' e, |
        d'\mf\> e, d' e, \molRit d'\startTextSpan e, d \clef bass e,\stopTextSpan \bar "||"

        \sectionLabel \markup { \box \number 55 }

        \tempo "A tempo" 4 = 50
        r8\p f8~^\markup { \tiny \italic "piu" \dynamic f } 2~ 8 aes8(\< |
        <fis cis'>2.) <bes ees>4~ |
        8 b8( e,2.)\mf |
        r4\> <g d'>4( <a c>2)\mp |
        \time 3/4 r4\< <f bes>4. cis'8 |
        <fis, gis~>4\mf <gis dis'>2 |
        r4\> r8 a8( <b e,>4) | \clef treble

        \sectionLabel \markup { \box \number 62 }

        r4 r4 g'8~ <g d'>8~\pp |
        \time 4/4 8\fermata f'8~\<_\markup { \italic \tiny "semplicemente" } 2 f8( ees |
        \time 3/4 bes'2.)\p |
        \time 4/4 r8 bes8~(\< 4 aes4.) e8( |
        \time 3/4 b'2.)\mp |
        \time 4/4 fis4.(\< cis'8~ 4. a8~ |
        \time 3/4 a2.)\mf |
        \time 4/4 r8\< g8~( 4 d'2 |
        \time 3/4 c2.)\f |
        \time 4/4 <ges, f' bes>2.(\arpeggio\mp <ees aes des>4) |

        \sectionLabel \markup { \box \number 72 }
        \override DynamicLineSpanner.staff-padding = \ds

        R1 |
        R1 |
        \time 3/4 R1*3/4 |
        \time 7/8 R1*7/8 |
        \time 3/4 R1*3/4 |
        \time 7/8 R1*7/8 |
        \time 3/4 r8 f,4(^\mf bes8 ees4) |
        \time 4/4 r2 r8 c8~ 4~ |
        \time 5/4 4 r4 r8 b8~( 4 e4~ |
        8) r8 r4 gis8(\mp cis,8~ 2  |
        \time 4/4 fis2) r2 |
        \time 5/4 r4 r8 g8~(\p 4~ 4. d8 |
        a2~ 8) r8 r2\fermata \bar "|."
      }
    >>
  }
  \new Staff = "d" \with { \consists "Merge_rests_engraver" }
  {
    \clef bass
    \set Staff.pedalSustainStyle = #'mixed
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \override DynamicLineSpanner.staff-padding = \phds
    \relative {
        \numericTimeSignature
        \tempo \markup { "Lento, poco rubato" } 4=50
        <<
          \relative {
            \voiceOne
            \time 5/4 r4 d'4~ 2. |
            \time 4/4 r4 b2. |
            \time 5/4 r2 gis2. |
            r4 r8 f8~ 2. |
            r4 r8 d'8~ 2. |
            \time 4/4 r4 b2. |
            \time 3/4 r4 gis2 |
            \time 4/4 r4 f4~ 2 |
            \time 3/4 r4 d'2 |
            \time 7/8 s4. s2 |
            \time 3/4 r4 e2 |
            \time 7/8 r8 r8 f8~ 2 |
          }
          \new Voice \relative {
            \voiceTwo
            \time 5/4 c8~ <c g'>8~ 4~ 2. |
            \time 4/4 a8~ <a e'>8~ 2. |
            \time 5/4 fis4. cis'8~ 2. |
            ees,8~ <ees bes'>8~ 4~ 2. |
            c'8~ <c g'>8~ 4~ 2 r4 |
            \time 4/4 a8~ <a e'>8~ 2. |
            \time 3/4 fis8~ <fis cis'>8~ 2 |
            \time 4/4 ees8 <ees bes'>8~ 2. |
            \time 3/4 c'8~ <c g'>8~ 2 |
            \time 7/8 a8[ cis8~ <cis fis>~] 2 |
            \time 3/4 b8~ <b gis'>~ 2 |
            \time 7/8 bes8~ <bes ees>4~ 2 |
          }
        >>
        \oneVoice
        \time 4/4 \once \offset staff-padding 1 TupletBracket \tuplet 3/2 { d,8 <b' g'>4~ } \tuplet 3/2 { 8 4 } \tuplet 3/2 { c,8 <a' e'>4~ } \tuplet 3/2 { 8 4 } |
        \tuplet 3/2 { des,8 <aes' f'>4~ } \tuplet 3/2 { 8 4 } \once \offset staff-padding 1 TupletBracket \tuplet 3/2 { ees8 <bes' ges'>4~ } \tuplet 3/2 { 8 4 } \bar "||"

        \sectionLabel \markup { \box \number 15 }

        \tempo "Piu Mosso" 4=65
        b,2~-> \tuplet 3/2 { 8 a'4~-> } 8 r8 |
        bes,16~ <bes f'>8.~ 2.~ |
        1 |
        r2 \tuplet 3/2 { c16~^\mp <c g'>8~ } 4.~ |
        1~ |
        4 d,2.~ |
        4~ <d b''>2.
        \time 3/4 b'8~ <b e'>8~ 2 |
        <<
          \relative {
            \voiceOne
            r4 d'2 |
            r4 f,2 |
            r8 fis8_~ <fis cis'>2 |
            \time 4/4 r4 b2. |
          }
          \new Voice \relative {
            \voiceTwo
            c8~ <c g'>~ 2 |
            ees,8~ <ees bes'>~ 2 |
            gis4 r4 r4 |
            \time 4/4 a8~ <a d>~ 2. |
          }
        >>
        \oneVoice
        g'8~ <g e'>8~ 4~ 8 c'8~ 4 |
        \tuplet 3/2 { r8^\pp^\<\sustainOn bes8 ges } \tuplet 3/2 { bes ges bes }
        \tuplet 3/2 { ges^\!^\> bes ges } \tuplet 3/2 { bes ges bes } |
        \tuplet 3/2 { r8^\p^\<\sustainOff\sustainOn aes8 f } \tuplet 3/2 { aes f aes }
        \tuplet 3/2 { f aes f } \tuplet 3/2 { aes f aes } |

        \omit Score.BarNumber
        \sectionLabel \markup { \box \number 30 }

        <<
          \relative {
            \voiceOne
            \time 7/4 a8[^\mf^\>\sustainOff\sustainOn c, a' c, a' c,^\!^\< a' c,] a'[ c, a' c, a' c,] |
            \undo \omit Score.BarNumber
            g'8[^\mf^\>\sustainOff\sustainOn b, g' b, g' b,^\!^\< g' b,] g'[ b, g' b, g' b,] |
            ges'8[ aes,^\f^\>\sustainOff\sustainOn ges' aes, ges' aes, ges' aes,] ges'[^\!^\< aes, ges' aes, ges' aes,] |
            f'8[^\f^\>\sustainOff\sustainOn bes, f' bes, f' bes, f' bes,] f'[ bes, f']^\mp r8 r4 |
          }
          \new Voice \relative {
            \voiceTwo
            \time 7/4 e,2.~-> 8 8->~ 2. |
            d2.-> d1~-> |
            d8 ees8->~ 2.~ 8 8~-> 2 |
            des2.->~ 8 8->~ 2. |
          }
        >>
        \oneVoice
        \time 4/4 \tuplet 3/2 { b,,8( fis'4~\sustainOff } 16) g( aes ees' c8) bes16( d \tuplet 5/4 { f8) e16( a cis,) } |
        gis2.~ 8 r8 |

        \omit Score.BarNumber
        \sectionLabel \markup { \box \number 36 }

        \tuplet 5/4 { dis'8~ <dis fis,>~ <dis fis, b,>4.~ } 2 |
        \undo \omit Score.BarNumber
        <c, e'>2\arpeggio \tuplet 3/2 { d8~ <d bes'>~ <d bes' f'>~ } 4 |
        <d a'>2.~ 8 des8~ |
        4 <c g' d'>2.\arpeggio |
        <a e' b'>1\arpeggio |
        \ottava #-1 fis1 |
        ees1 |
        g2 r8 \ottava #0 r8 r4 |
        R1 |
        R1 |
        \tuplet 3/2 { r8 r8 \ottava #-1 f8~ } 2. |
        <ees bes'>4. \ottava #0 b'''16( gis \tuplet 3/2 { e8) a,( d } fis,16) c'( f, des) |

        \omit Score.BarNumber
        \sectionLabel \markup { \box \number 48 }

        a'4~\sustainOn <a e'>~ <a e' b'>2~ |
        \undo \omit Score.BarNumber
        4 d4~\sustainOff\sustainOn 8~ <d g,>8~ 4~ |
        <d g, c,>1 |
        \time 3/4 ees,4.~\sustainOff\sustainOn <ees bes'>~ |
        \time 4/4 <ees bes' f'>1 |
        <<
          \relative {
            \voiceOne
            \time 3/4 \stemNeutral fis,4._~ <fis_~ cis'~> |
            \time 4/4 <fis cis' gis'>1 |
          }
          \new Voice \relative {
            \voiceTwo
            \time 3/4 s4\sustainOff\sustainOn s2 |
            \time 4/4 s2 s4 s8 s16 s16\sustainOff |
          }
        >>
        \oneVoice

        \omit Score.BarNumber
        \sectionLabel \markup { \box \number 55 }

        <<
          \relative {
            \voiceOne
            r4 d'2. |
            \undo \omit Score.BarNumber
            r4 b2. |
            s1 |
            r4 r8 f8~ 2 |
            \time 3/4 r4 r8 d'8~ 4 |
            r4 b2 |
            r4 gis2 |
          }
          \new Voice \relative {
            \voiceTwo
            c8~ <c g'>~ 2. |
            \undo \omit Score.BarNumber
            a8~ <a e'>~ 2. |
            fis4 cis'8~ <cis gis'>8~ 2 |
            ees,8~ <ees bes'>8~ 2. |
            \time 3/4 c'8~ <c g'>8~ 4 r4  |
            a8~ <a e'>~ 2 |
            fis8~ <fis cis'>~ 2 |
          }
        >>
        \oneVoice

        \omit Score.BarNumber
        \sectionLabel \markup { \box \number 62 }

        <<
          \relative {
            \voiceOne
            r4 f8~ <f c'>8~ 4~ |
            \undo \omit Score.BarNumber
            \time 4/4 8\fermata
          }
          \new Voice \relative {
            \voiceTwo
            ees,8~ <ees bes'>~ 2~ |
            \undo \omit Score.BarNumber
            \time 4/4 8
          }
        >>
        \oneVoice
        r8 \tuplet 3/2 { r8 c''4~\sustainOn } \tuplet 3/2 { 4 d,8~ } 4 |
        \time 3/4 g,,2. |
        \time 4/4 a2~\sustainOff \tuplet 3/2 { 4 cis'8~ } 4\sustainOn |
        \time 3/4 fis'2. |
        \time 4/4 r4\sustainOff\sustainOn \tuplet 3/2 {r8 b,4~ } \tuplet 3/2 { 4 e,,8~ } 4 |
        \time 3/4 gis,2. |
        \time 4/4 bes4~\sustainOff\sustainOn \tuplet 3/2 { 8 ees'4~ } 2 |
        \time 3/4 f'2.\sustainOff |
        \time 4/4 r4 <a,, d g>4 \once \override PianoStaff.Arpeggio.arpeggio-direction = #DOWN <b c, e,>2\arpeggio |


        \omit Score.BarNumber
        \sectionLabel \markup { \box \number 72 }
        \override DynamicLineSpanner.staff-padding = \ds

        <<
          \relative {
            \voiceOne
            r8 fis8~ 4 r8 f8~ 4~ |
            \undo \omit Score.BarNumber
            4 r4 e2 |
            \time 3/4 r4 d2 |
            \time 7/8 s2 s4. |
            \time 3/4 r4^\> r8 gis8~ 4 |
            \time 7/8 r8 a,8_~ <a_~ e'~>4 4.  |
            \time 3/4 r4^\p d2 |
            \time 4/4 r4 r8 f8_~ 2 |
            \time 5/4 r2 fis2. |
            r8 e8~ 4~ <e a,>2. |
            \time 4/4 r2 c2 |
            \time 5/4 r4 r4 <ges'>4~ 2 |
            r4 r8 dis'8~ 4~ 2\fermata |
          }
          \new Voice \relative {
            \voiceTwo
            cis,16~ <cis gis'>8.~ 4 ees16~ <ees bes'>8.~ 4~ |
            \undo \omit Score.BarNumber
            8 b8^\p a'4~ 2 |
            \time 3/4 bes,8~^\< <bes f'>~ 2 |
            \time 7/8 \stemNeutral c8~[ <c g'>8~] 4 ees'4.^\mf |
            \time 3/4 \stemDown fis,8~ <fis cis'>8~ 2 |
            \time 7/8 b,2~ 4. |
            \time 3/4 c8~ <c g'>~ 2 |
            \time 4/4 ees8~ <ees bes'>8~ 2. |
            \time 5/4 gis4. cis,8~ cis2. |
            b2~ 2. |
            \time 4/4 d4~ <d g>4~ 8 r8 r4 |
            \time 5/4 f8~\pp <f bes>8~ 2~ 2 |
            cis'4~ <cis gis'>2~ 2 \bar "|."
          }
        >>
        \oneVoice
      }
    }
>>
