#lang scheme  

(define (taylorSenoSimple n x)
  (define (factorial m)
    (if (= m 0) 1 (* m (factorial (- m 1)))))
  (if (= n 0) x
      (+ (/ (* (expt -1 n) (expt x (+ (* 2 n) 1)))
            (factorial (+ (* 2 n) 1)))
         (taylorSenoSimple (- n 1) x))))


(define (taylorCosenoCola n x)
  (define (factorial m acc)
    (if (= m 0) acc (factorial (- m 1) (* m acc))))
  (define (taylorCos-aux n x term result)
    (if (= n 0) result
        (taylorCos-aux (- n 1) x
                       (* -1 term)
                       (+ result (/ term (factorial (* 2 (- n 1)) 1))))))
  (taylorCos-aux n x 1 1))
