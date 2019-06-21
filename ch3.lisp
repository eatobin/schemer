(load (compile-file "ch2.lisp"))

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
