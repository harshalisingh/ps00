;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; 26.rkt

(require rackunit)
(require "extras.rkt")

;; DATA DEFINITIONS:

;empty scene
(define MTSCN (empty-scene 300 300))

(define-struct point (x y))
;; A Point is a (make-point Number Number).
;; It represents a position on the screen.
;; Interpretation:
;;   x = the x-coordinate on the screen (in pixels from the left).
;;   y = the y-coordinate on the screen (in pixels from the top).

;; point-fn : Point -> ?
;; (define (point fn a)
;;    (... (point-x a) (point-y a)))

;; ListofPoints

;; A ListofPoints (LOP) is one of:
;  -- empty
;  -- (cons Point LOP)

;;lop-fn : LOP -> ?
;;(define (lop-fn lop)
;;  (cond 
;;    [(empty? lop) ...]
;;    [else (...
;;           (point-fn (first lop))
;;           (lop-fn (rest lop)))]))

(define lop1
  (list
   (make-point 30 30)
   (make-point 100 95)
   (make-point 250 150)))

;; draw-circle : ListofPoints -> Circle
;; GIVEN: a list of points
;; RETURNS: a solid blue circle with radius 10 
;;          at every point in the list into a 300X300 scene

;; EXAMPLES:
;(draw-circle lop1)
;(place-images
; (list
;  (circle 10 "solid" "blue")
;  (circle 10 "solid" "blue")
;  (circle 10 "solid" "blue"))
; (list
;  (make-point 30 30)
;  (make-point 100 95)
;  (make-point 250 150))
; (empty-scene 300 300)
; )

;; STRATEGY: Structural Decomposition on lop : ListOfPoints
        
(define
  (draw-circle lop1)
  (cond
    [(empty? lop1) MTSCN]
    [else
     (place-image 
      (circle 10 "solid" "blue")
      (point-x (first lop1))
      (point-y (first lop1))
      (draw-circle (rest lop1)))]))
 

(draw-circle lop1)

;; TESTS:
(begin-for-test
  (check-equal?
   (draw-circle lop1)
   (place-images
    (list
     (circle 10 "solid" "blue")
     (circle 10 "solid" "blue")
     (circle 10 "solid" "blue"))
    (list
     (make-posn 30 30)
     (make-posn 100 95)
     (make-posn 250 150))
    (empty-scene 300 300)
    )))




