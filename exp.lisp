;; exp.lisp
(defstruct expense
  type  
  amount  
  date)  

(defparameter *expenses* '())

(defun add-expense (type amount date)
  (push (make-expense :type type :amount amount :date date) *expenses*))

(defun calculate-total-expenses ()
  (reduce #'+ (mapcar #'expense-amount *expenses*)))

(add-expense "Salarii" 2000 "2024-09-01")
(add-expense "Utilități" 500 "2024-09-10")

(format t "Total cheltuieli: ~a~%" (calculate-total-expenses))