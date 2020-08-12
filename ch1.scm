(define atom?
  (lambda (x)
    (and
     (not (pair? x))
     (not (null? x)))))

(define my-add
  (lambda (x)
    (+ x 99)))

;; (atom? '())
;; (atom? '(8))
;; (atom? 8)
;; (atom? '((8)))
