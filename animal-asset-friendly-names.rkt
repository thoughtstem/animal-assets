#lang racket

(provide (rename-out 
          (goldencat-sprite cat)
          (fish-sprite fish)
          (browndog-sprite dog)
          (brownchicken-sprite chicken)
          (browncow-sprite cow)
          (browngoat-sprite goat)
          (goldenllama-sprite llama)
          (pig-sprite pig)
          (bluerabbit-sprite rabbit)
          (sheep-sprite sheep)
          (turkey-sprite turkey)
          (goldenhorse-sprite horse)
          (wolf-sprite wolf)

          (apple-sprite apple)
          (banana-sprite banana)
          (broccoli-sprite broccoli)
          (cherries-sprite cherries)
          (eggplant-sprite eggplant)
          (greengrapes-sprite grapes)
          (kiwi-sprite kiwi)
          (mushroom-sprite mushroom)
          (onion-sprite onion)
          (pepper-sprite pepper)
          (pineapple-sprite pineapple)
          (potato-sprite potato)
          (strawberry-sprite strawberry)
          (tomato-sprite tomato)

          (coppercoin-sprite copper)
          (silvercoin-sprite silver)
          (goldcoin-sprite gold)

          (zookeeper-sprite zookeeper)
          (monkey-sprite monkey)
          (elephant-sprite elephant)
          (giraffe-sprite giraffe)
          (hippo-sprite hippo)
          (kangaroo-sprite kangaroo)
          (penguin-sprite penguin)
          (zebra-sprite zebra)

          (ghostfish-sprite ghost-fish)
          (greenfish-sprite green-fish)
          (jellyfish-sprite jellyfish)
          (orangefish-sprite orange-fish)
          (redfish-sprite red-fish)
          (shark-sprite shark)
          (yellowfish-sprite yellow-fish)
          (starfish-sprite starfish)
          (octopus-sprite octopus)
          (crab-sprite crab)

          (trashbag-sprite trash)
          (aluminumcan-sprite can)
          (plasticbottle-sprite bottle)
          )

         question-icon
         health-icon
         grow-icon
         shrink-icon
         speed-icon
         forcefield-icon
         rainbow-icon

         sea-bg
         )

(require survival)


(module animal-sprites racket

  (require define-assets-from
           survival)

  (define-assets-from "./assets/animal")
  (define-assets-from "./assets")

  (provide ;blackcat-sprite
           blackdog-sprite
           blackhorse-sprite
           browncat-sprite
           browndog-sprite
           brownhorse-sprite
           chicken-sprite
           brownchicken-sprite
           cow-sprite
           browncow-sprite
           fish-sprite
           goat-sprite
           browngoat-sprite
           goldencat-sprite
           goldendog-sprite
           goldenhorse-sprite
           grayhorse-sprite
           llama-sprite
           goldenllama-sprite
           pig-sprite
           rabbit-sprite
           bluerabbit-sprite
           sheep-sprite
           turkey-sprite
           ;whitecat-sprite
           whitedog-sprite
           whitehorse-sprite
           wolf-sprite
           
           ghostfish-sprite
           greenfish-sprite
           jellyfish-sprite
           orangefish-sprite
           redfish-sprite
           shark-sprite
           yellowfish-sprite
           starfish-sprite
           octopus-sprite
           crab-sprite
           
           zookeeper-sprite
           monkey-sprite
           elephant-sprite
           giraffe-sprite
           hippo-sprite
           kangaroo-sprite
           penguin-sprite
           zebra-sprite

           apple-sprite
           banana-sprite
           broccoli-sprite
           cherries-sprite
           eggplant-sprite
           greengrapes-sprite
           kiwi-sprite
           mushroom-sprite
           onion-sprite
           pepper-sprite
           pineapple-sprite
           potato-sprite
           purplegrapes-sprite
           strawberry-sprite
           tomato-sprite

           ;coppercoin-sprite
           ;silvercoin-sprite
           ;goldcoin-sprite

           trashbag-sprite
           aluminumcan-sprite
           plasticbottle-sprite
           )
  
  ; == ANIMALS
#|  (define blackcat-sprite
    (sheet->sprite blackcat-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5)) |#

  (define blackdog-sprite
    (sheet->sprite blackdog-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5))

  (define blackhorse-sprite
    (sheet->sprite blackhorse-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define browncat-sprite
    (sheet->sprite browncat-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5))

  (define browndog-sprite
    (sheet->sprite browndog-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5))

  (define brownhorse-sprite
    (sheet->sprite brownhorse-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))


  (define chicken-sprite
    (sheet->sprite chicken-sheet
                   #:rows 4
                   #:columns 4
                   #:row-number 4
                   #:delay 5))

  (define brownchicken-sprite
    (sheet->sprite (tint-img "darkred" chicken-sheet)
                   #:rows 4
                   #:columns 4
                   #:row-number 4
                   #:delay 5))

  (define cow-sprite
    (sheet->sprite cow-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

    (define browncow-sprite
    (sheet->sprite (tint-img "sienna" cow-sheet)
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  #;(define fish-sprite
    (sheet->sprite (beside (square 32 'solid 'blue) 
                           (square 32 'solid 'red))
                   #:rows 1
                   #:columns 2
                   #:row-number 1
                   #:delay 5))

  (define goat-sprite
    (sheet->sprite goat-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

    (define browngoat-sprite
    (sheet->sprite (tint-img "saddlebrown" goat-sheet)
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define goldencat-sprite
    (sheet->sprite goldencat-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5))

  (define goldendog-sprite
    (sheet->sprite goldendog-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5))

  (define goldenhorse-sprite
    (sheet->sprite goldenhorse-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define grayhorse-sprite
    (sheet->sprite grayhorse-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define llama-sprite
    (sheet->sprite llama-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define goldenllama-sprite
    (sheet->sprite (tint-img "goldenrod" llama-sheet)
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))


  (define pig-sprite
    (sheet->sprite pig-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define rabbit-sprite
    (sheet->sprite rabbit-sheet
                   #:rows 1
                   #:columns 5
                   #:row-number 1
                   #:delay 5))

  (define bluerabbit-sprite
    (sheet->sprite (tint-img "steelblue" rabbit-sheet)
                   #:rows 1
                   #:columns 5
                   #:row-number 1
                   #:delay 5))

  (define sheep-sprite
    (sheet->sprite sheep-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define turkey-sprite
    (sheet->sprite turkey-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  #|(define whitecat-sprite
    (sheet->sprite whitecat-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5))|#

  (define whitedog-sprite
    (sheet->sprite whitedog-sheet
                   #:rows 1
                   #:columns 3
                   #:row-number 1
                   #:delay 5))

  (define whitehorse-sprite
    (sheet->sprite whitehorse-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define wolf-sprite
    (sheet->sprite wolf-sheet
                   #:rows 1
                   #:columns 5
                   #:row-number 1
                   #:delay 5))

  ;===== SEA =====

  (define ghostfish-sprite
    (sheet->sprite  ghostfish-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define greenfish-sprite
    (sheet->sprite greenfish-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))
  
  (define jellyfish-sprite
    (sheet->sprite jellyfish-sheet
                   #:rows 1
                   #:columns 8
                   #:row-number 1
                   #:delay 5))

  (define orangefish-sprite
    (sheet->sprite orangefish-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define redfish-sprite
    (sheet->sprite redfish-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define shark-sprite
    (sheet->sprite shark-sheet
                   #:rows 1
                   #:columns 2
                   #:row-number 1
                   #:delay 5))

  
  (define yellowfish-sprite
    (sheet->sprite yellowfish-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

  (define starfish-sprite
    (sheet->sprite starfish-sheet
                   #:rows 1
                   #:columns 2
                   #:row-number 1
                   #:delay 5))

  (define octopus-sprite
    (sheet->sprite octopus-sheet
                   #:rows 1
                   #:columns 4
                   #:row-number 1
                   #:delay 5))

    (define crab-sprite
    (sheet->sprite crab-sheet
                   #:rows 1
                   #:columns 2
                   #:row-number 1
                   #:delay 3))

  ; === ZOO ANIMALS ===
  
  (define zookeeper-sprite
    (sheet->sprite zookeeper-sheet
                   #:rows 4
                   #:columns 4
                   #:row-number 3
                   #:delay 5))

  (define (make-wiggle-animation img)
    (list img
          (rotate -10 img)
          img
          (rotate 10 img)))
          

  (define elephant-sprite
    (new-sprite (make-wiggle-animation (scale 0.2 round-elephant)) 5))

  (define giraffe-sprite
    (new-sprite (make-wiggle-animation (scale 0.2 round-giraffe)) 5))

  (define hippo-sprite
    (new-sprite (make-wiggle-animation (scale 0.2 round-hippo)) 5))

  (define kangaroo-sprite
    (new-sprite (make-wiggle-animation (scale 0.2 round-kangaroo)) 5))

  (define monkey-sprite
    (new-sprite (make-wiggle-animation (scale 0.2 round-monkey)) 5))

  (define penguin-sprite
    (new-sprite (make-wiggle-animation (scale 0.2 round-penguin)) 5))

  (define zebra-sprite
    (new-sprite (make-wiggle-animation (scale 0.2 round-zebra)) 5))
  
  
  ; == FOOD
  (define apple-sprite
    (sheet->sprite apple-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define banana-sprite
    (sheet->sprite banana-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define broccoli-sprite
    (sheet->sprite broccoli-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define cherries-sprite
    (sheet->sprite cherries-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define eggplant-sprite
    (sheet->sprite eggplant-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define greengrapes-sprite
    (sheet->sprite greengrapes-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define kiwi-sprite
    (sheet->sprite kiwi-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define mushroom-sprite
    (sheet->sprite mushroom-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define onion-sprite
    (sheet->sprite onion-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define pepper-sprite
    (sheet->sprite pepper-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define pineapple-sprite
    (sheet->sprite pineapple-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define potato-sprite
    (sheet->sprite potato-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define purplegrapes-sprite
    (sheet->sprite purplegrapes-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define strawberry-sprite
    (sheet->sprite strawberry-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define tomato-sprite
    (sheet->sprite tomato-image
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

    ; == COINS
#|  (define coppercoin-sprite
    (sheet->sprite coppercoin-sheet
                   #:rows 1
                   #:columns 8
                   #:row-number 1
                   #:delay 2))

  (define silvercoin-sprite
    (sheet->sprite silvercoin-sheet
                   #:rows 1
                   #:columns 8
                   #:row-number 1
                   #:delay 2))

  (define goldcoin-sprite
    (sheet->sprite goldcoin-sheet
                   #:rows 1
                   #:columns 8
                   #:row-number 1
                   #:delay 2)) |#

      ; == REYOUSE
  (define trashbag-sprite
    (sheet->sprite trashbag
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define aluminumcan-sprite
    (sheet->sprite aluminumcan
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))

  (define plasticbottle-sprite
    (sheet->sprite plasticbottle
                   #:rows 1
                   #:columns 1
                   #:row-number 1
                   #:delay 5))
  
  )

(require 'animal-sprites)
