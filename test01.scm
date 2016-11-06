(define (square x)
  (* x x))
(define (sumofsquares x y)
  (+ (square x) (square y)))

;;(define (evallargest x y z)
;;  (cond ((and (> x y) (> z y)) (list (x z)))
;;	((and (> z x) (> y x)) (list (z y)))
;;	((and (> x z) (> y z)) (list (x y)))))
;;(define (f x y z)
;;  (sumofsquares (evallargest x y z)))

(define (evallargest x y z)                                                                                                                                           
  (cond ((and (> x y) (> z y)) (sumofsquares x z))                                                                                                                     
        ((and (> z x) (> y x)) (sumofsquares z y))                                                                                                                     
        ((and (> x z) (> y z)) (sumofsquares x y))))

(evallargest 1 2 4)
