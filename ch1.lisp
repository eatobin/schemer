(defun atom? (x)
  (not (listp x)))

;; (atom? '())
;; (atom? '(8))
;; (atom? 8)

(defun my-add (x)
  (+ x 99))
