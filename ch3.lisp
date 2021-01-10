(load "ch2.lisp")

(defun rember (a lat)
  (cond
    ((null lat) nil)
    ((eq (car lat) a) (cdr lat))
    (t (cons (car lat) (rember a (cdr lat))))))

(defun firsts (l)
  (cond
    ((null l) nil)
    (t (cons (car (car l)) (firsts (cdr l))))))

(defun insertR (new old lat)
  (cond
    ((null lat) nil)
    ((eq (car lat) old) (cons (car lat) (cons new (cdr lat))))
    (t (cons (car lat) (insertR new old (cdr lat))))))

(defun insertL (new old lat)
  (cond
    ((null lat) nil)
    ((eq (car lat) old) (cons new lat))
    (t (cons (car lat) (insertL new old (cdr lat))))))

(defun substCL (new old lat)
  (cond
    ((null lat) nil)
    ((eq (car lat) old) (cons new (cdr lat)))
    (t (cons (car lat) (substCL new old (cdr lat))))))

(defun substCL2 (new o1 o2 lat)
  (cond
    ((null lat) nil)
    ((or (eq (car lat) o1) (eq (car lat) o2)) (cons new (cdr lat)))
    (t (cons (car lat) (substCL2 new o1 o2 (cdr lat))))))

(defun multirember (a lat)
  (cond
    ((null lat) nil)
    ((eq (car lat) a) (multirember a (cdr lat)))
    (t (cons (car lat) (multirember a (cdr lat))))))

(defun multiinsertR (new old lat)
  (cond
    ((null lat) nil)
    ((eq (car lat) old) (cons (car lat) (cons new (multiinsertR new old (cdr lat)))))
    (t (cons (car lat) (multiinsertR new old (cdr lat))))))
