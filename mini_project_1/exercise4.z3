(set-option :produce-models true)

(declare-datatypes () ((Plant apple banana cherry rose tulip lily onion carrot pepper)))
(declare-datatypes () ((Garden garden1 garden2 garden3 garden4)))

(declare-fun Fruit (Plant) Bool)
(declare-fun Flower (Plant) Bool)
(declare-fun Vegetable (Plant) Bool)

(declare-fun GrowsIn (Plant Garden) Bool)


(assert (forall ((x Plant)) (= (Fruit x) (or (= x apple) (= x banana) (= x cherry)))))
(assert (forall ((x Plant)) (= (Flower x) (or (= x rose) (= x tulip) (= x lily)))))
(assert (forall ((x Plant)) (= (Vegetable x) (or (= x onion) (= x carrot) (= x pepper)))))


;; TODO: constraint 1
(assert (forall ((x Plant)) (or (Fruit x) (Flower x) (Vegetable x))))

;; TODO: constraint 2
(assert (forall ((x Plant)) (exists ((g Garden)) (GrowsIn x g))))

;; TODO: constraint 3
(assert (forall ((g Garden)) (not (and (GrowsIn rose g) (GrowsIn carrot g)))))

;; TODO: constraint 4
(assert (forall ((x Plant)) (=> (Flower x) (not (GrowsIn x garden2)))))

;; TODO: constraint 5
(assert (GrowsIn carrot garden1))
(assert (GrowsIn carrot garden4))
(assert (GrowsIn banana garden3))

;; TODO: constraint 6
(assert
    (forall
        ((g Garden))
        (=>
            (GrowsIn tulip g)
            (exists
                ((x Plant))
                (and (not (= x tulip)) (Flower x))
            )
        )
    )
)

;; TODO: constraint 7
(assert
    (forall
        ((x Plant) (y Plant))
        (=>
            (and (GrowsIn x garden1) (GrowsIn y garden1) (Fruit x) (Fruit y))
            (= x y)
        )
    )
)
(assert
    (forall
        ((x Plant) (y Plant))
        (=>
            (and (GrowsIn x garden1) (GrowsIn y garden1) (Vegetable x) (Vegetable y))
            (= x y)
        )
    )
)
(assert
    (forall
        ((x Plant) (y Plant))
        (=>
            (and (GrowsIn x garden1) (GrowsIn y garden1) (Flower x) (Flower y))
            (= x y)
        )
    )
)

;; TODO: constraint 8
(assert
    (forall
        ((g Garden))
        (exists
            ((x Plant) (y Plant) (z Plant))
            (and (GrowsIn x g) (GrowsIn y g) (GrowsIn z g) (not (= x y)) (not (= x z)) (not (= y z)))
        )
    )
)

;; TODO: constraint 9
(assert
    (exists
        ((g Garden))
        (forall
            ((x Plant))
            (=> (Fruit x) (GrowsIn x g))
        )
    )
)

(assert
    (forall
        ((g Garden) (q Garden))
        (=>
            (forall ((x Plant)) (=> (Fruit x) (and (GrowsIn x g) (GrowsIn x q))))
            (= g q)
        )
    )
)

;; TODO: constraint 10


;; TODO: statements (a-c) to prove


;; check and print model
(check-sat)

(echo "garden1:")
(get-value ((GrowsIn apple garden1) (GrowsIn banana garden1) (GrowsIn cherry garden1) (GrowsIn rose garden1) (GrowsIn tulip garden1) (GrowsIn lily garden1) (GrowsIn onion garden1) (GrowsIn carrot garden1) (GrowsIn pepper garden1)))

(echo "garden2:")
(get-value ((GrowsIn apple garden2) (GrowsIn banana garden2) (GrowsIn cherry garden2) (GrowsIn rose garden2) (GrowsIn tulip garden2) (GrowsIn lily garden2) (GrowsIn onion garden2) (GrowsIn carrot garden2) (GrowsIn pepper garden2)))

(echo "garden3:")
(get-value ((GrowsIn apple garden3) (GrowsIn banana garden3) (GrowsIn cherry garden3) (GrowsIn rose garden3) (GrowsIn tulip garden3) (GrowsIn lily garden3) (GrowsIn onion garden3) (GrowsIn carrot garden3) (GrowsIn pepper garden3)))

(echo "garden4:")
(get-value ((GrowsIn apple garden4) (GrowsIn banana garden4) (GrowsIn cherry garden4) (GrowsIn rose garden4) (GrowsIn tulip garden4) (GrowsIn lily garden4) (GrowsIn onion garden4) (GrowsIn carrot garden4) (GrowsIn pepper garden4)))
(echo "")
