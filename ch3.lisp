(load (compile-file "ch2.lisp"))

(defun rember (a lat)
  (cond
    ((null lat) (quote ()))
    ((eq (car lat) a) (cdr lat))
    (t (cons (car lat) (rember a (cdr lat))))))

