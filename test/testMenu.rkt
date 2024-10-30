 #lang racket

(define (menu)
  (display "Selecciona la pregunta (1-4): ")
  (let ((choice (read)))
    (cond ((= choice 1) (pregunta1))
          ((= choice 2) (pregunta2))
          ((= choice 3) (pregunta3))
          ((= choice 4) (pregunta4))
          (else (display "Opción no válida")))))

(define (pregunta1)
  (display "Ejecutando la pregunta 1\n"))

(define (pregunta2)
  (display "Ejecutando la pregunta 2\n"))

(define (pregunta3)
  (display "Ejecutando la pregunta 3\n"))

(define (pregunta4)
  (display "Ejecutando la pregunta 4\n"))

(menu)
