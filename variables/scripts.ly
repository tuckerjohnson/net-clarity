% project


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


#(define ((flared-tie coords) grob)

  (define (pair-to-list pair)
     (list (car pair) (cdr pair)))

  (define (normalize-coords goods x y dir)
    (map
      (lambda (coord)
        ;(coord-scale coord (cons x (* y dir)))
        (cons (* x (car coord)) (* y dir (cdr coord))))
      goods))

  (define (my-c-p-s points thick)
    (make-connected-path-stencil
      points
      thick
      1.0
      1.0
      #f
      #f))

  ;; outer let to trigger suicide
  (let ((sten (ly:tie::print grob)))
    (if (grob::is-live? grob)
        (let* ((layout (ly:grob-layout grob))
               (line-thickness (ly:output-def-lookup layout 'line-thickness))
               (thickness (ly:grob-property grob 'thickness 0.1))
               (used-thick (* line-thickness thickness))
               (dir (ly:grob-property grob 'direction))
               (xex (ly:stencil-extent sten X))
               (yex (ly:stencil-extent sten Y))
               (lenx (interval-length xex))
               (leny (interval-length yex))
               (xtrans (car xex))
               (ytrans (if (> dir 0)(car yex) (cdr yex)))
               (uplist
                 (map pair-to-list
                      (normalize-coords coords lenx (* leny 2) dir))))

   (ly:stencil-translate
       (my-c-p-s uplist used-thick)
     (cons xtrans ytrans)))
   '())))

#(define flare-tie
  (flared-tie '((0 . 0)(0.1 . 0.2) (0.9 . 0.2) (1.0 . 0.0))))
