#!/usr/bin/env guile
!#

(define (prepend e count tail)
  (if (<= count 0)
    tail
    (cons e (prepend e (- count 1) tail))))

(define (super-duper source count)
  (cond
    ((null? source) '())
    ((not (pair? source)) source)
    (else
      (let* ((head (car source))
             (e (if (pair? head) (super-duper head count) head))
             (tail (super-duper (cdr source) count)))
        (prepend e count tail)))))

(define (main)
  (let* ((argv (cdr (program-arguments)))
         (src (read (open-input-string (list-ref argv 0))))
         (n (string->number (list-ref argv 1))))
    (write (super-duper src n)) (newline)))

(main)
