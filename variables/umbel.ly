% net clarity project
xumbel = \markup {
  \center-column {
	    \path #0.1
	    #'((moveto 0 0)
	    (curveto 1 0.3 3.6 3 4.2 1.6)
	    (moveto 0 0)
	    (curveto -1 0.3 -3.6 3 -4.2 1.6)
	    (moveto 0 0)
	    (curveto 0.9 0.3 2.9 3 3.5 1.7)
	    (moveto 0 0)
	    (curveto -0.9 0.3 -2.9 3 -3.5 1.7)
	    (moveto 0 0)
	    (curveto 0.8 0.3 2.2 3 2.8 1.8)
	    (moveto 0 0)
	    (curveto -0.8 0.3 -2.2 3 -2.8 1.8)
	    (moveto 0 0)
	    (curveto 0.6 0.3 1.5 3 2.1 1.9)
	    (moveto 0 0)
	    (curveto -0.6 0.3 -1.5 3 -2.1 1.9)
	    (moveto 0 0)
	    (curveto 0.4 0.3 0.8 3 1.4 2)
	    (moveto 0 0)
	    (curveto -0.4 0.3 -0.8 3 -1.4 2)
	    (moveto 0 0)
	    (curveto 0.2 0.3 0.5 3 0.7 2.1)
	    (moveto 0 0)
	    (curveto -0.2 0.3 -0.5 3 -0.7 2.1)
	    (moveto 0 0)
	    (lineto 0 2.2))
	    \vspace #-0.035
	    \override #'(height . 0.25) \draw-squiggle-line #1 #'(0 . 5) ##f
	    \vspace #-0.275
	  }
	}
