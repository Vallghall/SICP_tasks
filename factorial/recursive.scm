#lang scheme 
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
(factorial 4)
(factorial 5)
(factorial 6)