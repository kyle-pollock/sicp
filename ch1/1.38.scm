(define (cont-frac n d k)
  (define (iter result i)
    (if (= k i) result
      (iter (/ (n (- k i)) (+ result (d (- k i)))) (+ i 1))))
  (iter 0 0))

(define (denom-function i)
  (if (= (remainder i 3) 2)
    (/ (+ i 1) 1.5)
    1))

(cont-frac (lambda (i) 1.0)
	   denom-function
	   1000)
