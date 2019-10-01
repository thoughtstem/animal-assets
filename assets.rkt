#lang at-exp racket

(provide (all-from-out
           "animal-asset-friendly-names.rkt"))

(require define-assets-from 
         "animal-asset-friendly-names.rkt")

(define-assets-from "assets")
(define-assets-from "assets/animal")

