(module evaluation lang/plt-pretty-big
        (provide best-mancala-eval)
        (require "mancala.scm") ; add any other modules you may need

;; Sourced from provided code in mancala-player.scm 
;; Procedure
;;   simple-mancala-eval
;;
;; Purpose
;;   Create a procedure for evaluating a player's mancala state
;;
;; Parameters
;;   player, a boolean
;;
;; Produces
;;   eval-fun, a procedure
;;
;; Preconditions
;;   [None]
;;
;; Postconditions
;;   eval-fun takes a state and returns the number of stones in player's mancala      
(define best-mancala-eval
   (lambda (player)
    (lambda (state)
      (let ((board (cdr state)))
	(- (list-ref board (if player 6 13)) (list-ref board (if player 13 6)))))))


) ; module

;; 

