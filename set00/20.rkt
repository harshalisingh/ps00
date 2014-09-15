;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; 20.rkt: Human Shape using Circles and rectangles

(above
 (circle 30 "solid" "red")
 (overlay/xy
  (overlay/xy 
   (rectangle 60 120 "solid" "black")
   60 20
   (rectangle 70 10 "solid" "blue"))
  -70 20
  (rectangle 70 10 "solid" "blue"))
 (overlay/xy
  (rectangle 10 70 "solid" "blue")
  30 0
  (rectangle 10 70 "solid" "blue")))