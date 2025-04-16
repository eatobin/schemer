#lang racket

(provide atom?)

(define (atom? x)
  (and (not (pair? x)) (not (null? x))))

(define my-add (lambda (x) (+ x 99)))

(atom? '())
(atom? '(8))
(atom? 8)
(atom? '((8)))

(my-add 15)
