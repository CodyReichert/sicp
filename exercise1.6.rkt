#lang scheme

;;we define a new 'if' statement to determine the outcome of
;; our sqr-iter procedure.
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  ;; the new if is run and evaluates using normal order, so all arguments
  ;; are are evaluated before the new-if is actually run.
  (new-if (good-enough? guess x)
      guess
      ;; which means that here we get infinite recursion, since this will keep expanding on itself
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;; is our guess close enough?
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) (* x 0.00001))) 
   
(define (square x)
  (* x x))

;; start the guessing with one
(define (sqrt x)
  (sqrt-iter 1.0 x))