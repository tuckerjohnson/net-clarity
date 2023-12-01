% parts
\book {
  \header {
    tagline = ##f
  }
%  \bookpart {
%    \tocItem \markup { "I. " \bold "Largo; Allegro moderato" }
%    \score {
%      \header {
%        title = \markup { \fontsize #1 \xtitle }
%        subtitle = \markup { \medium \italic \xsub }
%        composer = \xcomp
%        poet = \markup { \xinst }
%        piece = \markup { \large \bold "I. " }
%      }
%      <<
%        \include "manuscripts/I-clarinet.ly"
%        \include "manuscripts/I-piano.ly"
%      >>
%      %\midi { }
%      \layout {
%        \context {
%          \Score
%          \override RehearsalMark.break-visibility = #begin-of-line-invisible
%          \override BarNumber.font-size = #1
%          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
%        }
%      }
%    }
%  }
  \bookpart {
    \tocItem \markup { "III. " \bold "Chiaro; calma" }
    \score {
      \header {
        title = \markup { \fontsize #1 \xtitle }
        subtitle = \markup { \medium \italic \xsub }
        composer = \xcomp
        poet = \markup { \xinst }
        piece = \markup { \large "III." \bold "Chiaro; calma" }
      }
      <<
        \include "parts/III-clarinet-part.ly"
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
}
