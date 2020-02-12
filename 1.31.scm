(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))

(define (factorial n)
  (product-iter (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(factorial 1)
(factorial 2)
(factorial 3)
(factorial 4)

(define (wallis n)
  (product
    (lambda (x)
      (if (odd? x) (/ (+ x 1) (+ x 2)) (/ (+ x 2) (+ x 1))))
	   1 (lambda (x) (+ x 1)) n))

(* 4 (wallis 100))
