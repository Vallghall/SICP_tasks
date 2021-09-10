#lang scheme
(define (cubert x)
  (cubert-iter 1.0 x))
(define (cubert-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubert-iter (improve guess x)
                   x)))
(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))
(define (square x)
  (* x x))
(define (good-enough? guess x)
  (< (abs (- guess
             (improve guess x)))
     (* guess precision)))
(define precision 0.000001)