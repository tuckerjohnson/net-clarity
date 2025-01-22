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
  \override PianoStaff.VoiceFollower.bound-details =
  #'((right (padding . 3)) (left (padding . 3)))
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
        ees8--\f r8 r4 r4 f,,4~-> | %015

        \sectionLabel \markup { \box \number 16 }
        \omit Score.BarNumber
        \time 3/4 f2\psempre r8 c'8~ | \undo \omit Score.BarNumber %016
        c8 b'8-. r4 a4~ | %017
        a8 ees4 r8 r8 \grace ees8( g8) | %018
        e'8-. r8 d,4 f8 cis'8 | %019
        r4 bes,4 \grace des'8( ges,8-.) r8 | %020
        r4 r8 a8-. r8 \clef bass \grace gis,,8( b8) | %021
        e,4 r8 d8~ 8 r8 \clef treble | %022
        r8 c'''8-. r4 r4 | %023
        r8 f,8-. r4 aes,4 | %024
        ees''8-. r8 r4 r8 e,8~\mf | %025
        e4~ e8 r8 r8\< fis8 | %026
        r8 cis8 a8 r8\f r4 | %027
        c,8 r8 g8 r8 r4 | %028
        \after 2 \p R1*3/4 | %029

        \sectionLabel \markup { \box \number 30 }
        \omit Score.BarNumber
        R1*3/4 | \undo \omit Score.BarNumber %030
        r4 r8 d'8-.->\f r4\mp\< | %031
        r8 des8-.-> f-.-> r8 fis8-.->\f r8 | %032
        R1*3/4 | %033
        R1*3/4\p | %034
        <<
          {
            \voiceOne
            r4 d4~\< d8 r8 | %035
          }
          \new Voice {
            \voiceTwo
            r4 r8 bes8-.-> a-.-> r8 | %(035)
          }
        >>
        \oneVoice
        des8~ <des g>8~ \after 8 \f 4 c8-.-> aes'8~ | %036
        aes2 \after 8 \pp r4 | %037
        R1*3/4 | %038
        r4 r8 b,8-.->\< r8 g8-.-> | %039
        r4 r4 e8-.-> gis8-.-> | %040
        R1*3/4\f | %041

        \sectionLabel \markup { \box \number 42 }
        \omit Score.BarNumber
        \after 8 \p R1*3/4 | \undo \omit Score.BarNumber %042
        r4 r8 g''8-.\mf r4 | %043
        g8-. r8 g8-.-> aes4.~ | %044
        aes2.~ | %045
        aes4~ aes8 r8 d8->( cis8-.) | %046
        r4 cis8-.-> fis,4.\mp\< | %047
        fis4 fis8-.->\f r8 r4 | %048
        r4 c'8-.\mp r8 c,8-.-> r8 | %049
        r4 r4\f r8 c'8~ | %040
        c4 c8( d,4.~ | %051
        d8 cis'8-.) r4 r4 | %052
        R1*3/4 | %053
        r4 g'4.\> g8~( | %054
        g4 aes,2~ | %055
        \voiceOne aes2 fis'8-.)\p r8 | %056

        \sectionLabel \markup { \box \number 57 }
        \omit Score.BarNumber
        \oneVoice
        r4 r4 r8 b,,8-. | \undo \omit Score.BarNumber %057
        r8 f''8-. r4 r8 ees,8->~ | %058
        ees4 c'8-. r8 c8-. r8 | %059
        r8 c8-. r4 cis,8-. r8 | %060
        <<
          {
            \voiceTwo r4 r8 gis'8~(\f gis4 | %061
          }
          \new Voice {
            \voiceOne r4 r4 r8 e'8-. | %(061)
          }
        >>
        \oneVoice ais,,8-.) r8 bes8-. r8 r4 | %062
        r8 g'4(-> d'8-.) r4 | %063
        g,,8-.\p r8 r4 r4\< | %064
        d'4.( e,8-.)\mf r4 | %065
        r8 bes''8-.\mp r8 aes'4(\f des,8-.) | %066
        \after 4 \p R1*3/4 | %067
        r4 r4 b8-. r8 | %068
        r4 fis'8(\f a,8-.) r4 | %069

        \sectionLabel \markup { \box \number 70 }
        \omit Score.BarNumber
        a8-.-> r8 r4 r8\psempre c8-. | \undo \omit Score.BarNumber %070
        r4 r4 e,8-. r8 | %071
        R1*3/4 | %072
        aes,8-. r8 r4 r4 | %073
        R1*3/4 | %074
        R1*3/4 | %075

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
        \time 2/4 b4~\f b8 r8 | %b001
        \time 6/8 r4. \grace ees8( c4.) | %b002
        \time 3,2,2 7/8 R1*7/8 | %b003
        \time 4/4 r8 \grace b8( e,8)\mp r4 r8  aes8~ aes4 | %b004
        r2 a4.\f bes8 | %b005
        \time 6/8 R1*6/8 | %b006
        \time 9/8 \grace a8( fis4.)\mp cis'4. r4. | %b007
        \time 3/4 r4 r4 r8 c8~\f | %b008
        \time 4/4 c2~ c8 r8 r8 a'8~ | %b009
        a8~ <a e>8~ 4 aes4\p r4 | %b010
        \time 3,2 5/8 r4. ees,8\< g8~ | %b011
        \time 3/4 g8 r8 f4\f ges'4 | %b012
        r8 bes,4 r8 r4 | %b013
        \time 4/4 d,8\mp\< r8 r4 r8 cis'4 \U \grace e'8( \D b8) | %b014
        R1\f | %b015

        \time 3/4 des,4\p aes4 d4->~ | %b016
        d4. bes4.->~ | %b017
        <<
          {
            \voiceOne
            bes2.~ | %b018
          }
          \new Voice {
            \voiceTwo
            r4 r8 \grace aes8( ges8~ ges8) r8 | %(b018)
          }
        >>
        \oneVoice
        bes2. | %b019
        c2.->~ | %b020
        <<
          {
            \voiceOne
            c8 g'8~
          }
          \new Voice {
            \voiceTwo
            aes,8 r8
          }
        >>
        \oneVoice
        g'2~ | %b021
        g4
        <<
          {
            \voiceTwo
            ees2->~ | %(b022)
            ees2 des4->^~ | %(b023)
          }
          \new Voice {
            \voiceOne
            r4 r8 b'8~ | %b022
            b8 r8 bes,4 s4 | %b023
          }
        >>
        \oneVoice
        des4. ges,4.->~ | %b024
        <<
          {
            \voiceOne
            ges4. a4.->~\mf | %b025
            a2 b4->\< | %b026
          }
          \new Voice {
            \voiceTwo
            r4 f8 r8 r4 | %(b025)
            r4 r8 ees8 r4 | %(b026)
          }
        >>
        \oneVoice
        e4.-> gis4.->~\f | %b027
        gis2~ gis8 r8 | %b028
        r4 r4 ees,4\p( | %b029

        b2. | %b030
        c4~ c8) r8 fis'8~\mp\< <fis a>8~ | %b031
        4~ 8~ <fis a bes>-. r4\f | %b032
        r8 aes,8->~( aes2 | %b033
        f'8-.)\p r8 r4 r4 | %b034
        r4 r8 g,8(\< e8-.) r8 | %b035
        r4 r8 ees'8-. r8 f,8->~ | %b036
        f2~ f8 f8-.\pp | %b037
        r4 r4 r8 des8-. | %b038
        r4 r4\< d4~ | %b039
        d4 bes2-> | %b040
        fis'2.->\f | %b041

        r8 a,8~\p a2~ | %b042
        a8 r8 r8 b'''8-.\mf r4 | %b043
        bes8-. r8 bes8-.-> bes4.~ | %b044
        bes2.~ | %b045
        bes4~ bes8 r8 a8->( e-.) | %b046
        r4 e8-.-> e4.\mp\< | %b047
        ees4 ees8-. \f r8 r4 | %b048
        r4 ees8-.\mp r8 f8-.-> r8 | %b049
        r4 e,4(\f f,8-.) r8 | %b050
        r8 b-. r4 r8 \clef treble g''8~ | %b051
        g4 g4( fis'4~ | %b052
        fis8) fis8( aes,8-.) r8 r4 \clef bass | %b053
        ees,8-. r8 b''8-.\> b4.~( | %b054
        <<
          {
            \voiceOne
            b2 d,4~ | %b055
            \showStaffSwitch d4\p \U \voiceTwo cis'8_.) r8 r4 \hideStaffSwitch \D | %b056
          }
          \new Voice {
            \voiceTwo
            r8 bes,,8~( bes2~ | %(b055)
            bes8 a'8-.) \oneVoice r4 r4 | %(b056)
          }
        >>
        \oneVoice

        e,8-.\mf d'4->( g,8-.) r4 | %b057
        r4 r8 \clef treble ges''4.(\p | %b058
        ges2. | %b059
        ges8 a'8-.) r4 r4 \clef bass | %b060
        dis,,,8-. r8 r4 r4 | %b061
        r4 c'8->(\f f,8-.) r4 | %b062
        R1*3/4 | %b063
        b,8-.\p r8 b8-. r8 a'4~\< | %b064
        a4 a8( fis-.)\mf r4 | %b065
        <fis e'>8-. r8 r4 r4 | %b066
        r4 ees8-. r8 c'4~ | %b067
        c8 des,8-. des-. r8 r4 | %b068
        aes'2~
        <<
          {
            \voiceTwo aes8 aes8( | %b069
            f8-.->)
          }
          \new Voice {
            \voiceOne r8 c'8( | %(b069)
            bes8-.->)
          }
        >>

        \oneVoice r8 r4 d,8-.\sustainOn\p r8 | %b070
        r4 r8 g8-. r4 | %b071
        r4 r4 r8 fis8-.\sustainOff\sustainOn | %b072
        r4 bes8-. r8 ees,8-. b-. | %b073
        des,8-.\sustainOff\sustainOn r8 r4 r4 | %b074
        r4 r4 r8 f8-. | %b075

      }
    >>
  }
>>
