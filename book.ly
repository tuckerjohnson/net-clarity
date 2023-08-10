%river sonata project
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

  \score {
    \header {
      title = \markup { \fontsize #1 \xtitle }
      subtitle = \markup { \medium \italic \xsub }
      composer = \xcomp
      poet = \markup { \xinst }
    }
    <<
      \include "manuscripts/clarinet.ly"
      \include "manuscripts/piano.ly"
    >>
    %\midi { }
    \layout {
      \context {
	\Score
	\override RehearsalMark.break-visibility = #begin-of-line-invisible
	\override BarNumber.font-size = #1
	\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }
  }



  \markup { \null }
  \pageBreak
  \backcover
  \pageBreak
  \markup { \null }
}
