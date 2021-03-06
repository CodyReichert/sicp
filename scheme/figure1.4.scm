(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
	product
	(fact-iter (* product counter)
			   (+ 1 counter)
			   max-count)))

(factorial 9)

