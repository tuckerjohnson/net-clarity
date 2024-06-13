\version "2.24.3"

\include "general/info.ly"
\include "general/aliases.ly"
\include "general/scripts.ly"
\include "general/umbel.ly"

clarinetFont = #0
clarinetMagstep = #(magstep 0)

\paper {
  line-width = 120
  footnote-separator-markup = \markup { \left-column { \vspace #0.5 \draw-line #'(6 . 0) } }
  print-all-headers = ##t
  #(set-paper-size "arch a")
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.9\in
  right-margin = 0.9\in
  indent = 0.75\in
  short-indent = 0\cm
  #(define fonts (set-global-fonts #:music "scorlatti" #:brace "scorlatti" #:roman "Junicode" #:sans "syne"))
  max-systems-per-page = #7
  tocTitleMarkup = \markup { \hbracket \sans \bold " contents " }
  tocItemMarkup = \markup \fill-line {
    \fill-with-pattern #1.5 #CENTER .
    \line {
      \fromproperty #'toc:indent \fromproperty #'toc:text
    }
    \tiny \number \fromproperty #'toc:page
  }

  oddHeaderMarkup = \markup {
    \concat { \if \on-page #3 \oddhead }
    \concat { \if \on-page #5 \oddhead }
    \concat { \if \on-page #7 \oddhead }
    \concat { \if \on-page #9 \oddhead }
    \concat { \if \on-page #11 \oddhead }
    \concat { \if \on-page #15 \oddhead }
    \concat { \if \on-page #17 \oddhead }
    \concat { \if \on-page #19 \oddhead }
    \concat { \if \on-page #21 \oddhead }

  }
  evenHeaderMarkup = \markup {
    \concat { \if \on-page #2 \evhead }
    \concat { \if \on-page #4 \evhead }
    \concat { \if \on-page #6 \evhead }
    \concat { \if \on-page #8 \evhead }
    \concat { \if \on-page #10 \evhead }
    \concat { \if \on-page #14 \evhead }
    \concat { \if \on-page #16 \evhead }
    \concat { \if \on-page #18 \evhead }
    \concat { \if \on-page #20 \evhead }
    \concat { \if \on-page #22 \evhead }

  }
  oddFooterMarkup = \markup {
    \concat { \if \on-page #1 \fill-line { \null \xcr \null } }
    \concat { \if \on-page #3 \oddfoot }
    \concat { \if \on-page #5 \oddfoot }
    \concat { \if \on-page #7 \oddfoot }
    \concat { \if \on-page #9 \oddfoot }
    \concat { \if \on-page #13 \oddfoot }
    \concat { \if \on-page #15 \oddfoot }
    \concat { \if \on-page #17 \oddfoot }
    \concat { \if \on-page #19 \oddfoot }
    \concat { \if \on-page #21 \oddfoot }
    \concat { \if \on-page #23 \oddfoot }
  }
  evenFooterMarkup = \markup {
    \concat { \if \on-page #2 \evfoot }
    \concat { \if \on-page #4 \evfoot }
    \concat { \if \on-page #6 \evfoot }
    \concat { \if \on-page #8 \evfoot }
    \concat { \if \on-page #10 \evfoot }
    \concat { \if \on-page #12 \evfoot }
    \concat { \if \on-page #14 \evfoot }
    \concat { \if \on-page #16 \evfoot }
    \concat { \if \on-page #18 \evfoot }
    \concat { \if \on-page #20 \evfoot }
    \concat { \if \on-page #22 \evfoot }
  }

}

\book {

%  \bookpart {
%    \header {
%      title = \markup { \fontsize #1 \xtitle }
%      subtitle = \markup { \medium \italic \xsub }
%      composer = \xcomp
%      poet = \markup { \xinst }
%      piece = \markup { \large \bold "I. " }
%    }
%    \tocItem \markup { "I. " }
%    \score {
%      <<
%        \include "manuscripts/I-clarinet.ly"
%      >>
%      %\midi { }
%      \layout {
%        \context {
%          \Score
%          \override RehearsalMark.break-visibility = #begin-of-line-invisible
%          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
%          \override Hairpin.to-barline = ##f
%        }
%      }
%    }
%  }

%  \bookpart {
%    \header {
%      title = ##f subtitle = ##f composer = ##f poet = ##f
%      piece = \markup { \large \bold "II. " }
%    }
%    \tocItem \markup { "II. " }
%    \score {
%      <<
%        \include "manuscripts/II-clarinet.ly"
%      >>
%      %\midi { }
%      \layout {
%        \context {
%          \Score
%          \override RehearsalMark.break-visibility = #begin-of-line-invisible
%          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
%          \override Hairpin.to-barline = ##f
%        }
%      }
%    }
%  }

  \bookpart {
    \tocItem \markup { "III." \bold "Lento, poco rubato" \parenthesize \italic "to Amber Lucas" }
    \score {
      \header {
        title = \markup { \fontsize #1 \xtitle }
        arranger = \markup \typewriter \medium \fontsize #-4 { \shortHash }
        subtitle = \markup { \medium \italic \xsub }
        composer = \xcomp
        poet = \markup { clarinet in \concat { \bold "B" \tiny \flat } }
        piece = \markup { \large \bold "III. " \parenthesize \italic "to Amber Lucas"  }
      }
      <<
        \include "manuscripts/III-clarinet.ly"
      >>
     %\midi { }
      \layout {
        \context {
          \Score
          \remove Mark_engraver
          \remove Text_mark_engraver
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
          \override Hairpin.to-barline = ##f
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
        }
      }
    }
  }

  \bookpart {
    \tocItem \markup { "IV. " }
    \score {
      \header {
        title = ##f
        subtitle = ##f
        composer = ##f
        poet = ##f
        piece = \markup { \large \bold "IV." }
      }
      <<
        \include "manuscripts/IV-clarinet.ly"
      >>
      %\midi { }
      \layout {
        \context {
          \Score
          \remove Text_mark_engraver
          \remove Mark_engraver
          \override TextSpanner.bound-details.left-broken.text = " "
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
          \override Hairpin.to-barline = ##f
          \override Stem.stemlet-length = #0.75
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \consists Mark_engraver
        }
      }
    }
  }
}
