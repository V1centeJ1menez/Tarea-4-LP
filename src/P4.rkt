#lang scheme

(define (profundidades arbol)
  (define (profundidad-aux nodo nivel)
    (cond ((null? nodo) '())
          ((eq? (car nodo) 'T) (cons nivel (profundidad-aux (cdr nodo) nivel)))
          ((list? (car nodo))
           (append (profundidad-aux (car nodo) (+ nivel 1))
                   (profundidad-aux (cdr nodo) nivel)))
          (else (profundidad-aux (cdr nodo) nivel))))
  (sort (profundidad-aux arbol 0) <))
