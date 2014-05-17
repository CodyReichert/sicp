;; Observe that our model of evaluation allows for cominations whose operators are compund expressions. 
;; Use this oberservation to describe the behavior in the following procedure.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 5 5)

;; a-plus-abs-b takes two arguments. It checks if b is greater than 0. If the expression is true or false,
;; the (+) or (-) operand is applied respectively. 
