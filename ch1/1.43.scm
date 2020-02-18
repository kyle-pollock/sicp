(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (loop f n result)
    (if (= n 1)
      result
      (loop f (- n 1) (compose f result))))
  (loop f n f))

((repeated square 2) 5)
