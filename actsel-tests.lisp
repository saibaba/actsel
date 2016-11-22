(defpackage :actsel-tests
  (:use :common-lisp :lisp-unit :actsel))

(in-package :actsel-tests)

(defun sample1-jobs()
  (pairlis (list 1 3 0 5 8 5) (list 2 4 6 7 9 9)))

(define-test sample1-test (assert-equal 4 (length (activity-selection (sample1-jobs)))))

(defun sample2-jobs()
  (pairlis (list 1 0 1 4 2 5 3 4) (list 3 4 2 6 9 8 5 5)))

(define-test sample2-test (assert-equal 3 (length (activity-selection (sample2-jobs)))))

(defun sample3-jobs()
  (pairlis (list 1 2 4 1 5 8 9 11 13) (list 3 5 7 8 9 10 11 14 16)))

(define-test sample3-test (assert-equal 4 (length (activity-selection (sample3-jobs)))))

(defun sample4-jobs()
  (pairlis (list 1 3 0 5 3 5  6  8  8  2 12) (list 4 5 6 7 8 9 10 11 12 13 14)))
(define-test sample4-test (assert-equal 4 (length (activity-selection (sample4-jobs)))))
