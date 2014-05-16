#lang sheme

(define (A x y)
  (cond ((= y 0) 0)
		((= x 0) (* 2 y))
		((= y 1) 2)
		(else (A (- x 1)
				 (A x (- y 1))))))

(A 1 10) ;evaluates to 1024
(A 2 4) ;evaluates to 65536
(A 3 3) ;evaluates to 64436
(A 4 3) ;Aborting!: maximum recursion depth exceeded
