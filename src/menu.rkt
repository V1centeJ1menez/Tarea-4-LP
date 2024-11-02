#lang racket

(require "P1.rkt")
(require "P2.rkt")
(require "P3.rkt")
(require "P4.rkt")

(define (menu)
  (displayln "Seleccione una opción:")
  (displayln "1. Ejecutar Ejercicio 1")
  (displayln "2. Ejecutar Ejercicio 2")
  (displayln "3. Ejecutar Ejercicio 3")
  (displayln "4. Ejecutar Ejercicio 4")
  (displayln "5. Salir")
  
  (define opcion (read))
  
  (cond
    [(= opcion 1) (P1) (menu)]
    [(= opcion 2) (P2) (menu)]
    [(= opcion 3) (P3) (menu)]
    [(= opcion 4) (P4) (menu)]
    [(= opcion 5) (displayln "Saliendo...")]
    [else (displayln "Opción no válida. Intente de nuevo.") (menu)]))

(menu)
