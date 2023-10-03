% river project
%texts
xtitle = \markup { Net Clarity }
xsub = \markup { dedicated to Amber Lucas }
xcomp = \markup { Tucker Johnson }
xinst = \markup  { Clarinet and Piano }
xdur = \markup { \null }
xcr = \markup \tiny { Copyright Tucker Johnson MMXXIII. All Rights Reserved }
oddfoot = \markup { \fill-line { \null \center-column { \concat { " - " \fromproperty #'page:page-number-string " - " } \small { \xcomp } } \null } }
evfoot = \markup { \fill-line { \null \center-column { \concat { " - " \fromproperty #'page:page-number-string " - " } \small { \xtitle } } \null } }
finfoot = \markup { \fill-line { \null \center-column { \concat { " - " \fromproperty #'page:page-number-string " - " } \small \typewriter { "February 1st, 2022 - Rochester, New York" } } \null } }

%music
tmark = \tempo "Vivace" 4 = 132
bh = \break
ds = #2.5
sods = #3.4
phds = #3.9
dtim = \override Staff.TimeSignature.style = #'single-digit


%notationmarks
lsp = \once \override TextSpanner.bound-details.left.text = "sp"
rsp = \once \override TextSpanner.bound-details.right.text = " sp"
lst = \once \override TextSpanner.bound-details.left.text = "st"
rst = \once \override TextSpanner.bound-details.right.text = " st"
lord = \once \override TextSpanner.bound-details.left.text = "ord"
rord = \once \override TextSpanner.bound-details.right.text = " ord"
rit = \once \override TextSpanner.bound-details.left.text = "rit."
ace = \once \override TextSpanner.bound-details.left.text = "accel."
acepoc = \once \override TextSpanner.bound-details.left.text = "accelerando poco a poco"
ffsempre =
    #(make-dynamic-script (markup #:combine #:transparent "f" "ff" #:combine
#:transparent "f" #:normal-text #:italic "sempre" ) )
psempre =
    #(make-dynamic-script (markup #:combine #:transparent "f" "p" #:combine
#:transparent "f" #:normal-text #:italic "sempre" ) )
ppsempre =
    #(make-dynamic-script (markup #:combine #:transparent "f" "pp" #:combine
#:transparent "f" #:normal-text #:italic "sempre" ) )


U = \change Staff = "u"
D = \change Staff = "d"


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
