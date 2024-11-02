#lang scheme

(define (rotar lista)
  (append (cdr lista) (list (car lista))))

(define (aplicar-funciones funciones numero rotaciones)
  (if (= rotaciones 0)
      (car funciones)
      (aplicar-funciones (rotar funciones) numero (- rotaciones 1))))

(define (evaluador funciones numeros)
  (map (lambda (num) (aplicar-funciones funciones num (- (length funciones) 1))) numeros))
