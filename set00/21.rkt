;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |21|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))

(define-struct person (first-name last-name age height weight))

;; A Person is a
;;   (make-person String String PosReal PosReal PosReal)
;; Interpretation:
;    first-name is the person's first name
;    last-name is the person's last name
;    age is the person's age in years
;    height is the person's height in inches
;    weight is the person's weight in pounds

;; person-fn : Person -> ??

(define (person-fn p)
  (...
   (person-first-name p)
   (person-last-name p)
   (person-age p)
   (person-height p)
   (person-weight p)))

;; person-image : Person -> Image
;; GIVEN: A Person with first name, last name, age, height and weight
;; RETURNS: An Image of the person such that height and width 
;           of the image is related to the height of the person 
;; EXAMPLES:
;  (person-image "John" "Smith" 42 72 172)
;   = (person-image 72)

(define 
  (person-image fst-name lst-name age height weight)
  ()
  
  
  
  
  
  
  

