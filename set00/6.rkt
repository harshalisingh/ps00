;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; quadratic-root : Number Number Number -> Number
; GIVEN: co-efficients a, b and c of a quadratic equation
; RETURNS: One of the roots of the equation
; Examples:
; (quadratic-root 1 3 -4) => 1
; (quadratic-root 2 9 -5) => 0.5

(define (quadratic-root a b c)
  (/ (+ (- b)
        (sqrt (- 
               (* b b)
               (* 4 a c))))
     (* 2 a)))

(check-expect (quadratic-root 1 3 -4) 1)
(check-expect (quadratic-root 2 9 -5) 0.5)