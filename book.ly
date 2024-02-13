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
    \tocItem \markup { "I. " \bold "Canto" }
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
          \override Hairpin.to-barline = ##f
          \override Staff.pedalSustainStyle = #'mixed
        }
      }
    }
  }

  \bookpart {
    \tocItem \markup { "III. " \parenthesize \italic "to Amber Lucas" }
    \score {
      \header {
        piece = \markup { \large \bold "III. " \parenthesize \italic "to Amber Lucas"  }
      }
      <<
        \include "manuscripts/III-clarinet.ly"
        \include "manuscripts/III-piano.ly"
      >>
      %\midi { }
      \layout {
        \context {
          \Score
          \remove Text_mark_engraver
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override BarNumber.font-size = #1
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
          \override Hairpin.to-barline = ##f
          \override Staff.pedalSustainStyle = #'mixed
        }
        \context {
          \Staff
        }
      }
    }
  }

  \bookpart {
    \tocItem \markup { "IV. " }
    \score {
      \header {
        piece = \markup { \large \bold "IV." }
      }
      <<
        \include "manuscripts/IV-clarinet.ly"
        \include "manuscripts/IV-piano.ly"
      >>
      %\midi { }
      \layout {
        \context {
          \Score
          \remove Text_mark_engraver
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override BarNumber.font-size = #1
          \override Hairpin.to-barline = ##f
          \override Staff.pedalSustainStyle = #'mixed
        }
        \context {
          \Staff
          \RemoveEmptyStaves
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
