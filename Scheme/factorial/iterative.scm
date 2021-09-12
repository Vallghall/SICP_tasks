#lang scheme
(define (factorial n)
  (define (fact-iter counter product)
    (if (> counter n)
        product
        (fact-iter (+ counter 1)
                   (* product counter))))
  (fact-iter 1 1))
(factorial 4)
(factorial 5)
(factorial 6)