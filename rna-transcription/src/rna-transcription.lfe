(defmodule rna-transcription
  (export (to-rna 1) (->rna 1)))

; ->rn/1
(defun ->rna
  (("C") "G")
  (("G") "C")
  (("T") "A")
  (("A") "U")
  ((_) "?"))

; to_rna/1
(defun to-rna
  (((cons head '())) (->rna '(head)))
  (((cons head tail))
   (cons (->rna head) (to-rna tail))))
