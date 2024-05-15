% net clarity project

\new Staff \with {
  instrumentName = \markup { clarinet in \concat { \bold "B" \tiny \flat " " } }
  shortInstrumentName = \markup { cl }
  \override DynamicLineSpanner.staff-padding = \sods
  fontSize = #1
  \override StaffSymbol.staff-space = #(magstep 1)
  \consists Text_mark_engraver
}
%\transpose bes c'
\relative {
  \tempo 4=114
  \time 2/4 bes4(\mf d,8\> a'8~\p |
  a8 cis'~ 8) r8 |
  r4 ges8(\< f,8~ |
  f16)[\mf r16 c'8](\> e'4\p\< |
  \after 4 \mf ees,,2) |
  \tuplet 3/2 { g''4(\> b, gis\p } |
  ais16\< cis,16 a'8~ a8)\mf d,8~(\p |
  d4. f'8\< |
  ges,,4~\mf ges8) r8 |
  \after 4. \< g''2~(\p |
  g8 aes,,8~\mf aes4) |
  e8(\> c''4\p\< b16\> dis16)\! |


}
