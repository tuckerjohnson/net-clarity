% Net Clarity project
\book {
  \outcover
  \pageBreak
  \markup { \vspace #5 }
  \pageBreak
  \cover
  \pageBreak
  \front-matter
  \pageBreak
  \header {
    tagline = ##f
  }
  \bookpart {
    \tocItem \markup { "I. " \bold "Largo; Allegro moderato" }
    \score {
      \header {
        title = \markup { \fontsize #1 \xtitle }
        subtitle = \markup { \medium \italic \xsub }
        composer = \xcomp
        poet = \markup { \xinst }
        piece = \markup { \large \bold "I. " }
      }
      <<
        \include "manuscripts/I-clarinet.ly"
        \include "manuscripts/I-piano.ly"
      >>
      %\midi { }
      \layout {
        \context {
          \Score
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override BarNumber.font-size = #1
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
        }
      }
    }
  }
  \bookpart {
    \tocItem \markup { "III. " \bold "Lento, poco Rubato" }
    \score {
      \header {
        piece = \markup { \large \bold "III. " }
      }
      <<
        \include "manuscripts/III-clarinet.ly"
        \include "manuscripts/III-piano.ly"
      >>
      %\midi { }
      \layout {
        \context {
          \Score
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override BarNumber.font-size = #1
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
        }
      }
    }
  }

  \markup { \null }
  \pageBreak
  \backcover
  \pageBreak
  \markup { \null }
}
