;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; 27.rkt

(require 2htdp/image)

;; A List of Strings (LOS) is one of:
;; -- empty
;; -- (cons String LOS)

;; los-fn : LOS -> ?
;  (define (los-fn los)
;    (cond
;       [(empty? los)...]
;       [else (... (first los)(los-fn (rest los)))]))

;; draw-string : ListOfString -> Image
;; GIVEN : a list of strings
;; RETURNS : combined text of strings, separated by spaces
;; EXAMPLES:

;(begin-for-test
;  (check-equal?
;   (draw-string
;    (cons "Hello"
;          (cons "World!")
;          (cons "Bye" empty)))
;   (text (string-append "Hello" " " "World!" " " "Bye") 12 "Indigo")))

;; STRATEGY: Structural Decomposition on los : LOS

(define 
  (draw-string los)
   (text
    (cond
      [(empty? los) ""]
      [else
       (string-add-space los)]) 24 "Indigo"))
  

;; string-add-space : ListOfString -> String
;; GIVEN: a list of string los
;; RETURNS : a combined string with spaces

(define (string-add-space los)
  (cond
    [(empty? los) ""]
    [else (string-append
           (first los) " "
           (string-add-space (rest los)))])
  )

;; TESTS:
  (check-expect
   (draw-string
    (list
     "Hello" "World!" "Bye"))
   (text (string-append "Hello" " " "World!" " " "Bye" " ") 24 "Indigo"))

