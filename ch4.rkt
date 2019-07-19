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

(define addtup
  (lambda (tup)
    (cond
     ((null? tup) 0)
     (else (o+ (car tup) (addtup (cdr tup)))))))

(define ox
  (lambda (n m)
    (cond
     ((zero? m) 0)
     (else (o+ n (ox n (sub1 m)))))))

(define tup+
  (lambda (tup1 tup2)
    (cond
     ((null? tup1) tup2)
     ((null? tup2) tup1)
     (else (cons (o+ (car tup1) (car tup2))
                 (tup+ (cdr tup1) (cdr tup2)))))))

(define o>
  (lambda (n m)
    (cond
     ((zero? m) #t)
     ((zero? n) #f)
     (else (o> (sub1 n) (sub1 m))))))

(define (flat l)
  (cond
   ((null? l) '())
   ((atom? (car l)) (cons (car l) (flat (cdr l))))
   (else (append (flat (car l)) (flat (cdr l))))))
