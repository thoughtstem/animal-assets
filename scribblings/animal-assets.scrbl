#lang scribble/manual
@require[@for-label[animal-assets
                    racket/base]]

@title{animal-assets}
@author{thoughtstem}

@defmodule[animal-assets]

@(require define-assets-from)

@(require (submod "../assets.rkt" asset-docs))
@(doc-all (submod "../assets.rkt" asset-docs))
