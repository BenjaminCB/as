(declare-const a Bool)
(declare-const b Bool)
(declare-const c Bool)
(declare-const d Bool)
(declare-const e Bool)
(declare-const f Bool)

;(declare-fun g (Bool) Int)
;(assert (= (g true) 1))
;(assert (= (g false) 0))

; check that all edges are watched
;(assert (or a b))
;(assert (or a d))
;(assert (or a e))
;(assert (or b c))
;(assert (or b e))
;(assert (or c d))
;(assert (or c f))
;(assert (or d e))
;(assert (or d f))
;(assert (or e f))

(assert (<= (+ (g a) (g b) (g c) (g d) (g e) (g f)) 2))

(assert (or a (and (not a) (or b d e))))
(assert (or b (and (not b) (or a c e))))
(assert (or c (and (not c) (or b d f))))
(assert (or d (and (not d) (or a c f e))))
(assert (or e (and (not e) (or a d f))))
(assert (or f (and (not f) (or c d e))))

(check-sat)
(get-model)
