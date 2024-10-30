#lang racket
(define (buscador lista elemento)
  (define (aux lst elem index)
    (cond
      ((null? lst) -1)                           ; Si la lista está vacía, retornar -1
      ((equal? (car lst) elem) index)            ; Si encontramos el elemento, retornar el índice
      (else (aux (cdr lst) elem (+ index 1)))))  ; De lo contrario, continuar con el resto de la lista
  (aux lista elemento 1))                        ; Iniciamos la búsqueda en el índice 1
