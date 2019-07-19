(include "ch1.scm")

(define lat?
  (lambda (l)
    (cond
     ((null? l) #t)
     ((atom? (car l))(lat? (cdr l)))
     (else #f))))

(define member?
  (lambda (a lat)
    (cond
     ((null? lat) #f)
     (else (or (eq? (car lat) a)
               (member? a (cdr lat)))))))

(lat? '())
(lat? '(8))
(lat? '(8 (8)))
(lat? '((8)))

(member? 33 '(22 33 44))
(member? 39 '(22 33 44))
(member? 'dog '(cat dog))
(member? 'dog '(cat dogg))
