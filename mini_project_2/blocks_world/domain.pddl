(define (domain blocksworld)
    (:predicates (clear ?x) (holding ?x) (on ?x ?y)
                 (on-table ?x) (arm-empty)
    )
    (:action stack
     :parameters (?x ?y)
     :precondition (and (clear ?y) (holding ?x))
     :effect (and (arm-empty) (on ?x ?y)
                  (not (clear ?y)) (not (holding ?x)))
    )
    (:action unstack
     :parameters (?x ?y)
     :precondition (and (arm-empty) (on ?x ?y) (clear ?x))
     :effect (and (not (arm-empty)) (holding ?x) (not (on ?x ?y)) (clear ?y))
    )
    (:action pickup
     :parameters (?x)
     :precondition (and (arm-empty) (clear ?x) (on-table ?x))
     :effect (and (not (arm-empty)) (holding ?x))
    )
    (:action drop
     :parameters (?x)
     :precondition (and (holding ?x) (not (arm-empty)))
     :effect (and (arm-empty) (not (holding ?x)) (on-table ?x))
    )
)
