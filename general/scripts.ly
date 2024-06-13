to-internal-ts =
#(define-scheme-function
  (top partial bottom)
  (integer? rational? integer?)
  (let
   ((internal-ts
     (+ (/ top bottom) (* partial (/ 1 bottom)))))
   (cons (numerator internal-ts) (denominator internal-ts))))


fractionalTime =
#(define-music-function
  (top partial bottom)
  (integer? rational? integer?)
  #{
    \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
    \once \override Staff.TimeSignature.text =
      \markup \override #'(baseline-skip . 0) \center-column \number {
        \concat  { #(number->string top) \magnify #0.5 \pad-x #-.2 {
          \translate #'(0 . 1) #(number->string (numerator partial))
          \translate #'(-1 . 0) \override #'(thickness . 2) \draw-line #'(1 . 2)
          \translate #'(0 . 0) #(number->string (denominator partial)) }} #(number->string bottom)
        }
     \time #(to-internal-ts top partial bottom)
    #})
