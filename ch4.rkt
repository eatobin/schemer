#lang racket

(require "ch1.rkt")
(require "ch2.rkt")
(require "ch3.rkt")

(provide add1)
(provide sub1)
(provide o+)
(provide o-)

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define o+
  (lambda (n m)
    (cond
     ((zero? m) n)
     (else (add1 (o+ n (sub1 m)))))))

(define o-
  (lambda (n m)
    (cond
     ((zero? m) n)
     (else (sub1 (o- n (sub1 m)))))))
