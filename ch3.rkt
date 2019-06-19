#lang racket

(require "ch2.rkt")

(provide rember)
(provide firsts)

(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((eq? (car lat) a) (cdr lat))
              (else (cons (car lat)
                          (rember a (cdr lat)))))))))

(define firsts
  (lambda (l)
    (cond
      ((null? l) (quote ()))
      (else (cons (car (car l)) (firsts (cdr l)))))))
