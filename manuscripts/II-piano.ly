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
        R1*3/4 | %076
        R1*3/4 | %077
        R1*3/4 | %078
        R1*3/4 | %079
        R1*3/4 | %080
        R1*3/4 | %081
        R1*3/4 | %082
        e8-. gis8-. r4 r8 <bes bes,>8-. | %083

        \sectionLabel \markup { \box \number 84 }
        \omit Score.BarNumber
        \time 4/4 <bes bes,>8-. r8 r4 <c c,>8-. r8 r4 | \undo \omit Score.BarNumber %084
        <c c,>8-. r8 <d d,>8-. r8 r8 ges8(\mp\< aes8) aes8( | %085
        \time 3/4 bes8)\! r8 r4 r4 | %086
        r4 r8 bes8-.->\f r8 f'8~ | %087
        f2.~ | %088
        f2 f4\mp | %089
        f8(\< g8 a2~\ff | %090
        a8) a4 a8( c8) r8 | %091
        \ottava #1 c4\mf\< c8( d8) d8-. d8( | %092
        e4)\f e8-. e8-. \stemDown
        \tuplet 3/2 { \D <e, c>8 \U <d' e c>8 \D <fis, e d c>8 } | %093
        \time 3/8 \U <fis' gis e d c>8-. r8 r8 | %094
        \time 3/4 \ace e4->\startTextSpan b8-.\mp\< b8-. b8( cis~ | %095
        cis8) cis8( dis8)\f\< dis8-. dis8-. <dis c>8-. | %096
        <d! e>-. ees8-.\ff d8-.\mf\< d8-. d8-. e8-.\f | %097
        r4 \tuplet 3/2 { r8 r8 d8 } \tuplet 3/2  { \D <d, e>8 \U <d' e f>8 \D <d, e f g> } | %098
        \time 3/8 \U <d' e f g a>8-. r8 r8 | %099
        \time 4/4 \grace s8 \tuplet 3/2 { r8 \D ges,8 \U <ges' aes>8 \D <ges, aes f>8 }
        \tuplet 3/2 { \U <ges' aes f g>8 \D <ges, aes f g a> } \U <ges' aes f g a bes>8-.\stopTextSpan \ottava #0 r8 r4\fermata \clef bass | %100

        \sectionLabel \markup { \box \number 101 }
        \omit Score.BarNumber
        \tempo "Presto" 4=184
        \stemNeutral g,,,,,8-.\f r8 ees8( c8) r8 a'8( f'8-.) r8 | \undo \omit Score.BarNumber %101
        b,,8-- gis'8-. e8-. fis'8 r8 a,,8-. d8( des8 | %102
        bes8) r8 aes''8 r8 f,8 ges8-. r4 | %103
        g'8( e8) r4 r4 c,8-. r8 | %104
        d'8 r8 r4 aes8 bes8( des8) r8 | %105
        e,8 dis8-. b8-. r8 r2 | %106
        r4 r8 g'8( fis8) b8 cis,8-. d8-. | %107
        a8-. r8 c'8 r8 bes,8-. r8 ees'8 <f f,>8-- | %108

        \sectionLabel \markup { \box \number 109 }
        \omit Score.BarNumber
        \tempo "Tempo primo" 4=168
        \time 3/4 r4 r4 r8 <cis cis'>8-- | \undo \omit Score.BarNumber %109
        r8 e8 <bes bes'>4 r4 | %110
        r4 g'8 r8 <d d,>4 | %111
        r4 gis8 r8 fis,8-. f'8 | %112
        R1*3/4 | %113
        <c c'>4 r4 r4 | %114
        fis8-. r8 a,8 <b b'>8-- r4 | %115
        <ees ees,>8-- aes,8-. c8 r8 bes8-. r8 | %116
        r4 r4 <f f'>4 | %117
        r4 r8 b8 dis8 r8 | %118
        <fis fis,>8-- cis8-. <a a'>4 r4 | %119
        r4 r8 <g g'>8-- <ees ees'>8-. r8 | %120
        f'4.---> a~---> | %121
        <<
          {
            \voiceOne \rit a2\startTextSpan r4 | %122
          }
          \new Voice {
            \voiceTwo r4 des,8( bes4) <b b'>8-. | %(122)
          }
        >>
        \oneVoice
        r8 d8-- <ees ees'>8-- r8 \after 8 \stopTextSpan r4 \clef treble | %123

        \sectionLabel \markup { \box \number 124 }
        \omit Score.BarNumber
        \tempo "Poco meno mosso" 4=152
        <g g'>4--\mp r4 r4 | \undo \omit Score.BarNumber %124
        c'8-. <a a,>4( <fis fis,>) bes8-.-> | %125
        r8 f-.-> r8 des8-.-> r8 <d d'>8~ | %126
        2 fis8( e'8-.) | %127
        <<
          {
            \voiceTwo r4 des8-.-> r8 bes8-.-> d8~ | %128
            d8 a8~ a2 | %129
          }
          \new Voice {
            \voiceOne r4 s8 r8 r8 b'8-. | %(128)
            r8 aes8-. s2 | %(129)
          }
        >>
        \oneVoice f,8-.-> ees'8~ 4~ 8 b8-. | %130
        <<
          {
            \voiceTwo r8 c8~ c4
          }
          \new Voice {
            \voiceOne r4 des'8-. r8
          }
        >>
        \oneVoice <e, e,>8-. r8 | %131
        r8 f8( g,2) | %132
        bes'8( g,8~ g4~ g8 b~ | %133
        b8) d'8-. r8 e,,8( gis,4~ | %134
        gis2) fis''4~ | %135
        fis2 r8 a8~ | %136
        a4 r8 aes4. | %137

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
        \omit Staff.DynamicText \omit Staff.Hairpin
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
        a8-. r8 r4 r4 | %b076
        R1*3/4 | %b077
        r8 d8-.\sustainOff\sustainOn r4 r8 fis8-. | %b078
        R1*3/4 | %b079
        bes8-. r8 r4 r4 | %b080
        r4 c8-.\sustainOff\sustainOn r8 r4 | %b081
        R1*3/4 | %b082
        \after 2 \sustainOff R1*3/4 | %b083

        \time 4/4 R1 | %b084
        R1 | %b085
        \undo \omit Staff.DynamicText \undo \omit Staff.Hairpin
        \time 3/4 r4 \clef treble <f f'>8-.^\mp <g g'>8-. r8 <a a'>8-. | %b086
        R1*3/4 | %b087
        R1*3/4 | %b088
        <fis fis'>8-. r8 r8 <aes aes'>8-. r8 <bes bes'>8-.-> | %b089
        r4 r8 <ais ais'>8-.-> <b b'>8-. r8 | %b090
        r8 <cis cis'>8-.-> r4 r4 | %b091
        <ees ees'>8-.-> r8 r4 r4 | %b092
        r4 r4 s4^\p^\< | %b093
        \time 3/8 R1*3/8^\f | %b094
        \time 3/4 R1*3/4 | %b095
        r4 r4 r8 <c c'>8-.^\f | %b096
        <d d'>8-. r8 8-. 8-. 8-. <e e'>8-. | %b097
        r4 s8 s8^\mp^\< s4 | %b098
        \time 3/8 R1*3/8^\f | %b099
        \time 4/4 \grace s8 s16 s8.^\mf^\< s4 r4^\ff r4\fermata \clef bass | %b100
        \omit Staff.DynamicText \omit Staff.Hairpin

        \ottava #-1 g,,,,8-.\mp d8---> ees8( c8) bes---> a8( f'8-.) r8 | %b101
        b,8-- gis'8-. e-. fis cis8---> a-. d( des | %b102
        bes) c---> aes' ees---> f-. ges-. r4 | %b103
        g8( e) r4 r8 b8---> c-. f---> | %b104
        d a4.---> aes'8 bes,( des) fis--->  | %b105
        e8 dis-. b-. r8 r2 | %b106
        r4 r8 g'8( fis) b, cis-. d-. | %b107
        a e'---> c8 aes'---> bes,-. g'---> ees r8 | %b108

        R1*3/4 | %b109
        <f f'>8-. e-. r4 r4 | %b110
        r4 g8 c,4---> <a a'>8-. | %b111
        r8 dis8---> gis b,---> fis'-. f | %b112
        bes,---> des~---> des2 | %b113
        R1*3/4 | %b114
        fis8 d---> a r8 <e' e'>8-. <g g'>8-. | %b115
        r8 <aes aes'>8 c, g'8---> bes-. r8 | %b116
        r4 r4 r8 <d d,>8-. | %b117
        r4 r8 b,8 dis e~ | %b118
        e8 cis'8-. r8 gis4.->~ | %b119
        8 fis'->~ fis2 \ottava #0 | %b120
        r4 <aes aes'>4 r8 <e e'> | %b121
        <c c'> r8 \ottava #-1 des,8( bes4) r8 | %b122
        r8 d8 \ottava #0 r4 e'4~\mf | %123

        e4~ <e b'>~ <e b' e gis>4~ | %124
        2~ 8 bes''8~ | %125
        bes8~ <bes f>4~ <bes f des>4. | %126
        ees,,4~ <ees g'>2~ | %127
        <ees c' g'>4 des''4~ <des bes>4~ | %128
        4. des8~ <des bes>4 | %129
        <des bes f>4. d,,4.~| %130
        d2.~ | %131
        d4 <d a'>4->~ <d a' fis'>~ | %132
        4. <d a' fis'>4\arpeggio b''8~ | %133
        b4.~ <b e,>8~ <b e, gis,>4 | %134
        f,2~ f8 f8->~ | %135
        <f bes>4~ <f bes des>4~ 8~ <f bes des bes'>8~ | %136
        4. b4.\p | %137

      }
    >>
  }
>>
