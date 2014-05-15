#lang scheme
;;cube root calc
(define (squared x)
  (* x x))

(define (cubed x)
  (* x x x))

(define (improve y x)
  (/ (+ (/ x (squared y)) (* 2 y)) 3))

(define (good-enough? guess x)
  (< (abs (- (cubed guess) x)) (* x 0.001)))
                                  
(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(define (cbrt x)
  (cube-iter 1.0 x))
