(defpackage #:actsel
  (:use #:cl)
  (:export #:activity-selection))

(in-package #:actsel)

(defun icomp (i1 i2)
  (let* (
         (s1 (car i1))
         (e1 (cdr i1))
         (s2 (car i2))
         (e2 (cdr i2)))
    (if (< e1 e2)
      t
      nil)))
      ;(if (< s1 s2) t nil))))

(defun starts-after (x i)
  (if (>= (car x) (cdr i))
    t
    nil))

(defun combine (l x)
  (let* ( (i1 (first l)) )
    (if (starts-after x i1)
      (cons x l)
      l)))

(defun activity-selection (jobs)
  (let* ( (sorted-jobs (sort jobs 'icomp)))
    (reduce 'combine (rest sorted-jobs) :initial-value (list (first sorted-jobs)))))
