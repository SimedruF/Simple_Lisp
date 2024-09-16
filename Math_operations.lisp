;; Math_operations.lisp
(+ 5 3)    ;; 8
(- 10 4)   ;; 6
(* 6 7)    ;; 42
(/ 20 5)   ;; 4


(defparameter *x* 10)  ;; definește o variabilă globală *x* cu valoarea 10
(setq *x* 20)          ;; schimbă valoarea lui *x* la 20


(if (< 5 10)
    "Mai mic"
    "Mai mare")
;; Returnează "Mai mic" pentru că 5 este mai mic decât 10


(cond
  ((< 5 3) "Mai mic")
  ((= 5 5) "Egal")
  (t "Altceva"))
;; Returnează "Egal" deoarece 5 este egal cu 5


(defun salut (nume)
  (format t "Salut, ~a!~%" nume))

(salut "Ana")  ;; Afișează "Salut, Ana!"


'(1 2 3)  ;; O listă cu elementele 1, 2 și 3
(list 1 2 3)  ;; Creează aceeași listă

(car '(1 2 3))    ;; Returnează 1
(cdr '(1 2 3))    ;; Returnează (2 3)
(cons 0 '(1 2 3)) ;; Returnează (0 1 2 3)


(loop for i from 1 to 5 do
  (format t "i este ~a~%" i))
;; Afișează valorile de la 1 la 5


(dolist (element '(1 2 3))
  (format t "Element: ~a~%" element))
;; Afișează "Element: 1", "Element: 2", "Element: 3"


(lambda (x y) (+ x y))
;; Creează o funcție care adună două numere

(funcall (lambda (x y) (+ x y)) 3 4) ;; Returnează 7


(defmacro my-macro (x)
  `(format t "Valoarea este: ~a~%" ,x))

(my-macro 10)  ;; Afișează "Valoarea este: 10"