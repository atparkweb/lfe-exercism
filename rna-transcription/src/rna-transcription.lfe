(defmodule rna-transcription
  (export (to-rna 1)))

; ->rn/1
(defun ->rna
  (('C') "G")
  (('G') "C")
  (('A') "T")
  (('U') "A")
  ((_) "?"))

; to_rna/1
(defun to-rna (n)
  (to-rna n '()))

; to_rna/2
(defun to-rna
  (('() result) result) 
  (((cons head tail) result)
   (let* ((converted (->rna head))
	  (new-result (cons converted result)))
     (to-rna tail new-result))))
