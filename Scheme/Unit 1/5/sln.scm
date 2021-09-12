#lang scheme
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
;; Infinite loop here due to the interpreter's applicative approach
(test 0 (p))