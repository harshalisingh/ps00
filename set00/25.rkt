;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; 25.rkt

(require rackunit)
(require "extras.rkt")

;; DATA DEFINITIONS:

;; A List of Boolean (LOB) is one of:
;  -- empty
;  -- (cons Boolean LOB)

;; lob-fn : LOB -> ?
;  (define (lob-fn lob)
;    (cond
;        [(empty?) lob]
;        [else (... (first lob) (rest lob))]))

;; bool-test : Boolean ListOfBoolean -> ListOfBoolean
;; GIVEN: A list of booleans
;; RETURNS: true if all booleans in the list are true
;; EXAMPLES:
;  (begin-for-test 
;    (check-equal? (bool-test empty) empty)
;    (check-equal? (bool-test (cons true (cons true empty))) true)
;    )


;; STRATEGY: Structural Decomposition on lst : LOB

(define (bool-test lob)
  (cond
    [(empty? lob) true]
    [(boolean=?
      (and (first lob)
           (bool-test (rest lob))) true) true]
    [else false]))

;; TESTS:

(begin-for-test
  (check-equal? (bool-test empty) true)
  (check-equal? (bool-test (cons true (cons true (cons true empty)))) true)
  (check-equal? (bool-test (cons true (cons false empty))) false)
  )

