(define (dx) 0.00001)

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (loop f n result)
    (if (= n 1)
      result
      (loop f (- n 1) (compose f result))))
  (loop f n f))

(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold-smooth f n)
  ((repeated smooth n) f))
