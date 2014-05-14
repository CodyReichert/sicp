#lang scheme

(define (square a)
  (* a a))

(square 14)

(define (bigger x y)
  (if (> x y) x y))

(bigger 9 10)

(define (sum-of-bigger x y z)
  (cond ((> x y) (+ (square x) (square (bigger y z))))
		(else (+ (square y) (square (bigger x z))))))

(sum-of-bigger 3 2 5)
