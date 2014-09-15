;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |19|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; rel-rec-sequence: PosReal PosReal -> Rectangle
;; GIVEN: width of the rectangle 
;;        and proportion of width for height
;;        (i.e. height = width * proportion)
;; RETURNS: a solid blue rectangle with given width and height
;; EXAMPLES:
;; (rel-rec-sequence 5 2.5) = (rectangle 5 (* 5 2.5) "solid" "blue")
;;                          = (rectangle 5 12.5 "solid" "blue")
;;                          

;; DESIGN STRATEGY: Domain Knowledge

(define 
  (rel-rec-sequence w p)
                    (rectangle w
                               (* w p)
                               "solid"
                               "blue"))

;; TESTS:

(check-expect (rel-rec-sequence 5 3) 
              (rectangle 5 15 "solid" "blue"))
(check-expect (rel-rec-sequence 32 0.5)
              (rectangle 32 16 "solid" "blue"))




