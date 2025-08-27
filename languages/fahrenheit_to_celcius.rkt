#!/usr/bin/env guile
!#
(use-modules (ice-9 textual-ports))

(define (prompt-number msg)
  (display msg)
  (force-output)
  (string->number (get-line (current-input-port))))

(define (fahrenheit->celsius degrees)
  (* (- degrees 32.0) (/ 5.0 9.0)))

(define (main)
  (let ((temperature (prompt-number "temperature (fahrenheit)>")))
    (display (fahrenheit->celsius temperature))
    (newline)))

(main)
