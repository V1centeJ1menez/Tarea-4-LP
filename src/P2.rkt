#lang scheme  

(define (taylorSenoSimple n x)
  (define (factorial m)
    (if (= m 0) 1 (* m (factorial (- m 1)))))
  (if (= n 0) x
      (+ (/ (* (expt -1 n) (expt x (+ (* 2 n) 1)))
            (factorial (+ (* 2 n) 1)))
         (taylorSenoSimple (- n 1) x))))


(define (taylorCosenoCola n x)
  ;; Factorial calculado usando acumulación.
  (define (factorial m acc)
    (if (= m 0) acc (factorial (- m 1) (* m acc))))
  
  ;; Función auxiliar para la serie de Taylor usando recursión de cola.
  (define (taylorCos-aux n term result)
    (if (< n 0) result
        ;; Cálculo del siguiente término de la serie, alternando el signo
        (let ((next-term (* (/ (expt x (* 2 n)) (factorial (* 2 n) 1))
                            (if (even? n) 1 -1))))
          (taylorCos-aux (- n 1) next-term (+ result next-term)))))
  
  ;; Inicializamos la serie llamando con el primer término en 1
  (taylorCos-aux n 1 1))
