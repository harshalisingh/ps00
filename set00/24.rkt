;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; 24.rkt

(require rackunit)
(require "extras.rkt")

;; DATA DEFINITIONS:

;; A List of Numbers (LON) is one of:
;; -- empty
;; -- (cons Number LON)

;; list-fn : List -> ?
;  (define (list-fn lst)
;    (cond
;       [(empty? lst)...]
;       [else (... (first lst)(list-fn (rest lst)))]))


;; multiply : Number ListOfNumber -> ListOfNumber
;; GIVEN: A List of numbers
;; RETURNS: product of all numbers in the list
;; EXAMPLES:
;  (multiply empty)                   = 1
;  (multiply (cons 3 empty))          = 3
;  (mlutiply (cons 3 (cons 5 empty))) = 15
;; STRATEGY: Structural Decomposition on lst : LON

(define (multiply lst)
  (cond
    [(empty? lst) 1]
    [else (* (first lst)
             (multiply (rest lst)))]))

;; TESTS:
(begin-for-test
  (check-equal? (multiply empty) 1)
  (check-equal? (multiply (cons 3(cons 5 empty))) 15)
)
