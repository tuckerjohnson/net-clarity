U = \change Staff = "u"
D = \change Staff = "d"

%spacing
ds = #2.5
sods = #3.4
phds = #3.9

%notation marks
lsp =  \override TextSpanner.bound-details.left.text = "sp"
rsp =  \override TextSpanner.bound-details.right.text = " sp"
lst =  \override TextSpanner.bound-details.left.text = "st"
rst =  \override TextSpanner.bound-details.right.text = " st"
lord =  \override TextSpanner.bound-details.left.text = "ord"
rord =  \override TextSpanner.bound-details.right.text = " ord"
rit =  \override TextSpanner.bound-details.left.text = \markup { \upright "rit. " }
ritPoc =  \override TextSpanner.bound-details.left.text = \markup { \upright "ritardando poco a poco " }
molRit =  \override TextSpanner.bound-details.left.text = \markup { \upright "molto rit. " }
pocRit =  \override TextSpanner.bound-details.left.text = \markup { \upright "poco rit. " }
ace =  \override TextSpanner.bound-details.left.text = \markup { \upright "accel. " }
pocAce =  \override TextSpanner.bound-details.left.text = \markup { \upright "poco accel. " }
acePoc =  \override TextSpanner.bound-details.left.text = \markup { \upright "accelerando poco a poco " }
molAce =  \override TextSpanner.bound-details.left.text = \markup { \upright "molto accel. " }

ffsempre =
    #(make-dynamic-script (markup #:combine #:transparent "f" "ff" #:combine
#:transparent "f" #:normal-text #:italic "sempre" ) )

psempre =
    #(make-dynamic-script (markup #:combine #:transparent "f" "p" #:combine
#:transparent "f" #:normal-text #:italic "sempre" ) )

ppsempre =
    #(make-dynamic-script (markup #:combine #:transparent "f" "pp" #:combine
#:transparent "f" #:normal-text #:italic "sempre" ) )

ppsubito =
    #(make-dynamic-script (markup #:combine #:transparent "f" "pp" #:combine
#:transparent "f" #:normal-text #:italic "subito" ) )

psubito =
    #(make-dynamic-script (markup #:combine #:transparent "f" "p" #:combine
#:transparent "f" #:normal-text #:italic "subito" ) )



doubleSeparator = \markup {
  \left-column {
  \vcenter \combine
  \beam #2.0 #0.3 #0.5
  \raise #0.7 \beam #2.0 #0.3 #0.5
  }
  \hspace #98
  \right-column {
  \vcenter \combine
  \beam #2.0 #0.3 #0.5
  \raise #0.7 \beam #2.0 #0.3 #0.5
  }
}


buzzSymbol = \markup \path #0.25
#(let ((x 3/6) (y 2/5))
  `((moveto ,x ,(- y)) (lineto ,(- x) ,(- y))
    (lineto ,x ,y) (lineto ,(- x) ,y)))

applyBuzzSymbol = #(grob-transformer 'stencil
  (lambda (grob orig)
   (let ((dir (ly:grob-property grob 'direction))
         (sten (grob-interpret-markup grob buzzSymbol)))
    (ly:stencil-add orig
	 (ly:stencil-translate-axis sten (* 0.1 dir) Y)))))

applyBuzzuSymbol = #(grob-transformer 'stencil
  (lambda (grob orig)
   (let ((dir (ly:grob-property grob 'direction))
         (sten (grob-interpret-markup grob buzzSymbol)))
    (ly:stencil-add orig
	 (ly:stencil-translate-axis sten (* 1.6 dir) Y)))))

applyBuzzdSymbol = #(grob-transformer 'stencil
  (lambda (grob orig)
   (let ((dir (ly:grob-property grob 'direction))
         (sten (grob-interpret-markup grob buzzSymbol)))
    (ly:stencil-add orig
	 (ly:stencil-translate-axis sten (* 1.6 dir) Y)))))

applyBuzzddSymbol = #(grob-transformer 'stencil
  (lambda (grob orig)
   (let ((dir (ly:grob-property grob 'direction))
         (sten (grob-interpret-markup grob buzzSymbol)))
    (ly:stencil-add orig
	 (ly:stencil-translate-axis sten (* 2.1 dir) Y)))))


buzz = \tweak Stem.stencil \applyBuzzSymbol \etc
buzzu = \tweak Stem.stencil \applyBuzzuSymbol \etc
buzzd = \tweak Stem.stencil \applyBuzzdSymbol \etc
buzzdd = \tweak Stem.stencil \applyBuzzddSymbol \etc
