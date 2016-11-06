(define (cuberoot-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cuberoot-iter (improve guess x)
		     x)))
(define (good-enough? guess-old guess-new)
  (< (abs (- guess-new guess-old)) (* 0.001 guess-new)))
(define (abs x)
  (if (< x 0)
      (- 0 x)
      x))
(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (square guess))) 3))
(define (square x)
  (* x x))
(define (cuberoot x)
  (cuberoot-iter 1.0 x))
