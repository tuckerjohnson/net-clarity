\version "2.24.3"

\include "general/info.ly"
\include "general/aliases.ly"
\include "general/scripts.ly"
\include "general/umbel.ly"

clarinetFont = #-2
clarinetMagstep = #(magstep -2)

\paper {
  line-width = 120
  first-page-number = -1
  footnote-separator-markup = \markup { \left-column { \vspace #0.5 \draw-line #'(6 . 0) } }
  print-page-number = ##f
  #(set-paper-size "arch a")
  print-all-headers = ##t
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.9\in
  right-margin = 0.9\in
  indent = 0.75\in
  short-indent = 0\cm
  #(define fonts (set-global-fonts #:music "scorlatti" #:brace "scorlatti" #:roman "Junicode" #:sans "syne"))
  max-systems-per-page = #10
  system-system-spacing = #'((basic-distance . 10) (minimum-distance . 8) (padding . 12))
  score-system-spacing = #'((basic-distance . 2) (minimum-distance . 1) (padding . 0))
  last-bottom-spacing = #'((basic-distance . 5) (minimum-distance . 5) (padding . 0))
  tocTitleMarkup = \markup { \hbracket \sans \bold " contents " }

  tocItemMarkup = \markup \fill-line {
    \fill-with-pattern #1.5 #CENTER .
    \line {
      \fromproperty #'toc:indent \fromproperty #'toc:text
    }
    \tiny \number \fromproperty #'toc:page
  }

  oddHeaderMarkup = \markup {
    \concat { \if \on-page #5 \oddhead }
    \concat { \if \on-page #7 \oddhead }
    \concat { \if \on-page #9 \oddhead }
    \concat { \if \on-page #11 \oddhead }
    \concat { \if \on-page #13 \oddhead }
    \concat { \if \on-page #15 \oddhead }
    \concat { \if \on-page #17 \oddhead }
    \concat { \if \on-page #19 \oddhead }
    \concat { \if \on-page #21 \oddhead }

  }
  evenHeaderMarkup = \markup {
    \concat { \if \on-page #4 \evhead }
    \concat { \if \on-page #6 \evhead }
    \concat { \if \on-page #8 \evhead }
    \concat { \if \on-page #10 \evhead }
    \concat { \if \on-page #12 \evhead }
    \concat { \if \on-page #14 \evhead }
    \concat { \if \on-page #16 \evhead }
    \concat { \if \on-page #18 \evhead }
    \concat { \if \on-page #20 \evhead }
    \concat { \if \on-page #22 \evhead }

  }
  oddFooterMarkup = \markup {
    \concat { \if \on-page #3 \fill-line { \null \xcr \null } }
    \concat { \if \on-page #5 \oddfoot }
    \concat { \if \on-page #7 \oddfoot }
    \concat { \if \on-page #9 \oddfoot }
    \concat { \if \on-page #11 \oddfoot }
    \concat { \if \on-page #13 \oddfoot }
    \concat { \if \on-page #15 \oddfoot }
    \concat { \if \on-page #17 \oddfoot }
    \concat { \if \on-page #19 \oddfoot }
    \concat { \if \on-page #21 \oddfoot }
    \concat { \if \on-page #23 \oddfoot }
    %\concat { \if \on-page #25 \fill-line { \null \tiny \typewriter \longHash \null } }
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

  \markuplist { %Outside Cover
    \fill-line {
      \line { \null }
      \center-column {
	\line { \with-url #"https://newer.systems" \fontsize #1 \hbracket \sans \bold "  https://newer.systems  " }
      }
      \line { \null }
      \line { \null }
      \line { \null }
      \line { \null }
    }
    \fill-line {
        \line { \null }
        \center-column {
            \line { \null }
          }
        \right-column {
            \vspace #15
            \line { \fontsize #8 \bold \underline \xtitle }
	    \vspace #-0.1
            \line { \fontsize #3 \sans \xcomp }
	    \vspace #3
	    \line { \fontsize #2 \sans \concat { "for " \xinst } }
      }
    }
    \vspace #26.25
    \fill-line {
      \line { \null }
      \line { \null }
      \line { \null }
      \line { \null }
      \center-column {
	\xumbel
	\vspace #0.3
	  \line { \fontsize #1 \hbracket \sans \bold "  umbel press  " }
      }
      \line { \null }
    }
  }

  \pageBreak
  \markup { \vspace #5 }

  \pageBreak
  \markuplist { %Inside Cover
    \fill-line {
        \line { \null }
        \center-column {
            \vspace #10
            \line { \hbracket \fontsize #10 \number 2024 }
            \vspace #4
            \line { \xcomp  }
            \vspace #1
            \line { \fontsize #5 \bold  \xtitle }
            \line { \italic \xsub }
            \vspace #4
          }
        \right-column {
            \line { \null }
      }
    }
  }

  \pageBreak
  \markuplist { %Front Matter
    \fill-line {
      \left-column {
        \line { \bold \xtitle " [2024]" }
        \line { \xinst " | " 20 minutes }
        \line { \xcomp }
        \vspace #25
      }
      \center-column {
        \vspace #5
        \override #'(x-padding . -10)
        \center-column { \table-of-contents }
        \vspace #3
        \override #'(thickness . 5)
        \draw-squiggle-line #0.5 #'(20 . 0) ##t
        \vspace #3
        \line { \hbracket \bold \sans " program notes "}
        \vspace #0.2
          \center-column {
            \override #'(line-width . 100)
            \justify {
              I was struck by the idea of writing \bold "Net Clarity" while listening
              to my partner, Amber Lucas, practice one of the Reger clarinet sonatas.
              The work extends a technical approach I employed to compose short
              keyboard inventions in my recent piece Circumnutation and explores
              further the structural potentialities of the diatonic set (equivalent to
              the major scale) and its relationship to the aggregate (the collection of
              all 12 notes). These (my) technical proclivities notwithstanding, \bold
              "Net Clarity" also indulges in the diatonic set as a referential
              collection \char #8211 hinting at other music, without necessarily
              quoting. Because of its design, the work creates the sensation of a hazy
              memory \char #8211 remembering music with varying levels of clarity.
            }
          }
        \vspace #3
        \override #'(thickness . 5)
        \draw-squiggle-line #0.5 #'(20 . 0) ##t
      }

      \right-column {
        \vspace #-0.5
        \right-column \fontsize #-1 {
          \line { \fontsize #-2 \typewriter { \shortHash - \subject } }
          \vspace #-0.4
          \line { \fontsize #-2 \typewriter { \commitDate } }
          \vspace #-0.4
          \line { \fontsize #-2 \typewriter { \branchName } }
        }
        \vspace #2
      }
    }
  }

  \pageBreak
  \header {
    tagline = "test"

  }

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
%        \include "manuscripts/I-piano.ly"
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
%    \tocItem \markup { "II. " \bold "Vivace" }
%    \score {
%      \header {
%        title = \markup { \fontsize #1 \xtitle }
%        subtitle = \markup { \medium \italic \xsub }
%        composer = \xcomp
%        poet = \markup { \xinst }
%        piece = \markup { \large \bold "II. " }
%      }
%      <<
%        \removeWithTag #'part \include "manuscripts/II-clarinet.ly"
%        \removeWithTag #'part \include "manuscripts/II-piano.ly"
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
        piece = \markup { \large \bold "III. " \parenthesize \italic "to Amber Lucas"  }
      }
      <<
        \removeWithTag #'part \include "manuscripts/III-clarinet.ly"
        \removeWithTag #'part \include "manuscripts/III-piano.ly"
      >>
     %\midi { }
      \layout {
        \context {
          \Score
          \remove Mark_engraver
          \remove Text_mark_engraver
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
          \override Hairpin.to-barline = ##f
        }
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }
    }
  }

  \bookpart {
    \tocItem \markup { "IV. " \bold "Allegro energico" }
    \score {
      \header {
        title = ##f
        subtitle = ##f
        composer = ##f
        poet = ##f
        piece = \markup { \large \bold "IV." }
      }
      <<
        \removeWithTag #'part \include "manuscripts/IV-clarinet.ly"
        \include "manuscripts/IV-piano.ly"
      >>
      \midi { }
      \layout {
        \context {
          \Score
          \remove Text_mark_engraver
          \remove Mark_engraver
          \override TextSpanner.bound-details.left-broken.text = " "
          \override RehearsalMark.break-visibility = #begin-of-line-invisible
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/10)
          \override Hairpin.to-barline = ##f
          \override Stem.stemlet-length = #0.75
        }
        \context {
          \Staff
          \RemoveEmptyStaves
          \consists Mark_engraver
        }
      }
    }
  }

  \pageBreak
  \markup { \null }
}
