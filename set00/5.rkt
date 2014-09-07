;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; sq : Number -> Number
; GIVEN: A number
; RETURNS: Square of the number.
; Examples:
; (sq 4) => 16
; (sq 3) => 9

(define (sq x)
  (* x x))

(check-expect (sq 4) 16)
(check-expect (sq 3) 9)
(check-expect (sq -3) 9)