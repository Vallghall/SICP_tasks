#lang scheme
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average a b)
  (/ (+ a b) 2))
(define (good-enough? guess x)
  (<= (abs (- x (square guess)))
      0.001))
(define (square x) (* x x))
