;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |15|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))

(define-struct student (id name major))

;; A Student is a
;;  (make-student Number String String)
;; Interpretation:
;;   id is the student's unique id
;;   name is student's name
;;   major is student's major

;; student-fn : Student -> ??
 (define (student-fn s)
   (...
    (student-id s)
    (student-name s)
    (student-major s)))
