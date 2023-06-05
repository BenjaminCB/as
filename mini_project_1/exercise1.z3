(declare-const x0 Bool)
(declare-const x1 Bool)
(declare-const _x0 Bool)
(declare-const _x1 Bool)

; clock starts between 0-2
(assert (not (and x0 x1)))

; check zero bit after update
(assert (= _x0 (not (or x0 x1))))

; check first bit after update
(assert (= _x1 x0))

; we do not have 3 after update
(assert (not (and _x1 _x0)))

(check-sat)
(get-model)
