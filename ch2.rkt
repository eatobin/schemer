#lang racket

(require "ch1.rkt")

(provide lat?)
(provide member?)

(define lat?
  (lambda (l)
    (cond
      [(null? l) #t]
      [(atom? (car l)) (lat? (cdr l))]
      [else #f])))

(define member?
  (lambda (a lat)
    (cond
      [(null? lat) #f]
      [else (or (eq? (car lat) a) (member? a (cdr lat)))])))

(lat? '())
(lat? '(8))
(lat? '(8 (8)))
(lat? '((8)))

(member? '#:a '(#:c #:b #:a))
(member? '#:x '(#:c #:b #:a))
(member? 'dog '(cat dog))
(member? 'dog '(cat dogg))
