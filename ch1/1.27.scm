(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder
	   (square (expmod base (/ exp 2) m))
	   m))
	(else
	  (remainder
	    (* base (expmod base (- exp 1) m))
	    m))))

(define (carmichael-test n)
  (define (try-it n count)
    (cond ((= count n) (display "pass"))
	  ((= (expmod count n n) count) (try-it n (+ count 1)))
	  (else (display "failed on: ") (display count))))
  (try-it n 1))

(carmichael-test 199)
(carmichael-test 561)
(carmichael-test 1105)
(carmichael-test 1729)
(carmichael-test 2465)
(carmichael-test 2821)
(carmichael-test 6601)

