(defmodule leap
  (export (leap-year 1)))

(defun divisible_by_4 (n) (=:= (rem n 4) 0))
(defun divisible_by_100 (n) (=:= (rem n 100) 0))
(defun divisible_by_400 (n) (=:= (rem n 400) 0))

(defun leap-year (year)
  ; if divisible by 4
  (if (divisible_by_4 year)
      ; unless also divisble by 100
       (if (divisible_by_100 year)
	 ; unless divisble by 400
	 (if (divisible_by_400 year) 'true 'false)
	 'true)
       'false))
