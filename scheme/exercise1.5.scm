#lang scheme

(define (p) (p))
(define (test x y)
  (if (= x 0)
	0
	y))
(test 0 (p))

;; This is used to test which evaluation order the interpreter is using. With applicative order evaluation
;; the function will never termainate. This is because all arguments of an expression are evaluated before
;; the expression itself. Therefore, (p) will keep expanding on itself and the procedure will never complete.
;; With normal order evaluation, the arguments are only evaluated when they are needed, so running the 
;; function will yield the result '0'.:w
