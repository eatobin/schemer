(load "ch1.lisp")

(defun lat? (l)
  (cond
    ((null l) t)
    ((atom? (car l)) (lat? (cdr l)))
    (t nil)))

(defun member? (a lat)
  (cond
    ((null lat) nil)
    ((eq (car lat) a) t)
    (t (member? a (cdr lat)))))

(lat? '())
(lat? '(8))
(lat? '(8 (8)))

(member? :a '())
(member? :a '(:a))
(member? :a '(:ax))
(member? :a '(:ax :a))
(member? 'dog '(cat dog))
(member? 'dog '(cat dogg))
