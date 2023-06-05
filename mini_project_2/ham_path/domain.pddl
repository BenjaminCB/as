(define (domain ham-path)
    (:predicates (visited ?x) (edge ?x ?y) (at ?x))
    (:action walk
     :parameters (?x ?y)
     :precondition (and (at ?x) (edge ?x ?y) (not (visited ?y)))
     :effect (and (at ?y) (visited ?y) (not (at ?x)))
    )
)
