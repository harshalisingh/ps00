;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex8) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; circle-area : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its area, using the formula pi * r * r
; Examples:
; (circle-area 1)  =>   3.142857142857143
; (circle-area 5)  =>   78.57142857142857
; (circle-area 7)  =>   153.9380400258998

(define (circle-area r)
  (* pi r r))

(check-within (circle-area 1) #i3.14 0.01)
(check-within (circle-area 5) #i78.57 0.01)
(check-within (circle-area 7) #i3.14 0.01)