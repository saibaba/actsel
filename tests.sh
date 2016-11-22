#!/usr/local/bin/sbcl --script
(load "~/quicklisp/setup.lisp")
(ql:quickload "actsel")
(in-package :actsel-tests)
(setq *print-failures* t)
(print-errors (lisp-unit:run-tests))
