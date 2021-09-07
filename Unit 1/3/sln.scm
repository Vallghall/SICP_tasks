#lang scheme
(define (sumOfbiggestSquares a b c)
  (cond ((>= a b) (if (>= c b)
                  (+ (* a a) (* c c))
                  (+ (* a a) (* b b))))
        ((>= b a) (if (>= c a)
                  (+ (* b b) (* c c))
                  (+ (* b b) (* a a))))
        ((c >= b) (if (>= a b)
                  (+ (* c c) (* a a))
                  (+ (* c c) (* b b))))))
(sumOfbiggestSquares 1 2 3)
(sumOfbiggestSquares 1 3 2)
(sumOfbiggestSquares 4 7 1)