#!/usr/local/bin/sbcl --script


(defun my-max (lst)
  (labels ((rec-max (lst actual-max)
             (if (null lst)
                 actual-max
                 (let ((new-max (if (> (car lst) actual-max) (car lst) actual-max)))
                   (rec-max (cdr lst) new-max)))))
    (when lst (rec-max (cdr lst) (car lst)))))

(defun F (L)
(cond
((null L) 0)
((= (rem (car L) 2) 0) (my-max (car L) (F (cdr L))))
(T (F (cdr L)))))


(defvar x(list 1 2 3 4 5))
(defvar ans (my-max x))
(print ans)