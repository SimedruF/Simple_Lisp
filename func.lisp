(defun area-circle(rad)
   "Calculates area of a circle with given radius"
   (terpri)
   (format t "Radius: ~5f" rad)
   (format t "~%Area: ~10f" (* 3.141592 rad rad))
)
(area-circle 10)