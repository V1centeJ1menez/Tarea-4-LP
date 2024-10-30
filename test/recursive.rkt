#lang scheme

(define encontrarPos
    (lambda (L x)
        (let find((i 0) (Laux L) (R '()))
            (cond ((null? Laux) R)
                ((eqv? (car Laux) x) (find (+ i 1) (cdr Laux) (append R (list i))))
                (else (find (+ i 1) (cdr Laux) R)) ))))