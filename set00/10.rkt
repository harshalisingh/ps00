;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; addition : Number Number Number -> Number
; GIVEN : three numbers
; RETURNS : the sum of the two larger numbers
; Examples:
; (addition 45 67 32) => 112
; (addition -1 0 2)   => 2
; (addition 7 2 4)    => 11

(define (addition a b c)
 (if (= a (min a b c)) (+ b c) (if (= b (min a b c))(+ a c)
                                   (+ a b))))

(check-expect (addition 1 0 0) 1)