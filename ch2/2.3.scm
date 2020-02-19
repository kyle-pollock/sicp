(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))


(define (make-rect bottom-left top-right)
  (cons bottom-left top-right))

(define (perimeter r)
  (* 2
    (+
      (+ (x-point (car r)) (x-point (cdr r)))
      (+ (x-point (car r)) (x-point (cdr r)))
    )))

(define (area r)
  (*
    (+ (x-point (car r)) (x-point (cdr r)))
    (+ (y-point (car r)) (y-point (cdr r)))
    ))

(perimeter
  (make-rect
    (make-point 0 0)
    (make-point 4 4)
    ))

(area
  (make-rect
    (make-point 0 0)
    (make-point 4 4)
    ))
