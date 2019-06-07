(define (atom? x)
    (and (not (pair? x)) (not (null? x))))

(atom? '())
(atom? '(8))
(atom? 8)
(atom? '((8)))
