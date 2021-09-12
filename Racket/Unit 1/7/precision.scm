#lang scheme
(define (sqrt-guessed-1 x)
  (sqrt-iter 1.0 x))
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
  (> (* precision guess)
      (abs (- guess
              (improve guess x)))))
(define (square x) (* x x))
(define precision 0.00001)
