(define (problem lightup-p02)
(:domain lightup)
(:objects
    n0 n1 n2 n3 n4 - num    ; objects encoding numbers from 0 to 4
    x0 x1 x2 x3 x4 - xpos   ; x-coordinates
    y0 y1 y2 y3 y4 - ypos   ; y-coordinates
)
(:init
    ; TODO


    ;; auxiliary facts encoding neighborship relations {{
    (increment n0 n1)
    (increment n1 n2)
    (increment n2 n3)
    (increment n3 n4)
    (right x0 x1)
    (right x0 x2)
    (right x0 x3)
    (right x0 x4)
    (right x1 x2)
    (right x1 x3)
    (right x1 x4)
    (right x2 x3)
    (right x2 x4)
    (right x3 x4)
    (below y0 y1)
    (below y0 y2)
    (below y0 y3)
    (below y0 y4)
    (below y1 y2)
    (below y1 y3)
    (below y1 y4)
    (below y2 y3)
    (below y2 y4)
    (below y3 y4)
    (adjacent x0 y0 x0 y1)
    (adjacent x0 y0 x1 y0)
    (adjacent x0 y1 x0 y2)
    (adjacent x0 y1 x0 y0)
    (adjacent x0 y1 x1 y1)
    (adjacent x0 y2 x0 y3)
    (adjacent x0 y2 x0 y1)
    (adjacent x0 y2 x1 y2)
    (adjacent x0 y3 x0 y4)
    (adjacent x0 y3 x0 y2)
    (adjacent x0 y3 x1 y3)
    (adjacent x0 y4 x0 y3)
    (adjacent x0 y4 x1 y4)
    (adjacent x1 y0 x1 y1)
    (adjacent x1 y0 x2 y0)
    (adjacent x1 y0 x0 y0)
    (adjacent x1 y1 x1 y2)
    (adjacent x1 y1 x1 y0)
    (adjacent x1 y1 x2 y1)
    (adjacent x1 y1 x0 y1)
    (adjacent x1 y2 x1 y3)
    (adjacent x1 y2 x1 y1)
    (adjacent x1 y2 x2 y2)
    (adjacent x1 y2 x0 y2)
    (adjacent x1 y3 x1 y4)
    (adjacent x1 y3 x1 y2)
    (adjacent x1 y3 x2 y3)
    (adjacent x1 y3 x0 y3)
    (adjacent x1 y4 x1 y3)
    (adjacent x1 y4 x2 y4)
    (adjacent x1 y4 x0 y4)
    (adjacent x2 y0 x2 y1)
    (adjacent x2 y0 x3 y0)
    (adjacent x2 y0 x1 y0)
    (adjacent x2 y1 x2 y2)
    (adjacent x2 y1 x2 y0)
    (adjacent x2 y1 x3 y1)
    (adjacent x2 y1 x1 y1)
    (adjacent x2 y2 x2 y3)
    (adjacent x2 y2 x2 y1)
    (adjacent x2 y2 x3 y2)
    (adjacent x2 y2 x1 y2)
    (adjacent x2 y3 x2 y4)
    (adjacent x2 y3 x2 y2)
    (adjacent x2 y3 x3 y3)
    (adjacent x2 y3 x1 y3)
    (adjacent x2 y4 x2 y3)
    (adjacent x2 y4 x3 y4)
    (adjacent x2 y4 x1 y4)
    (adjacent x3 y0 x3 y1)
    (adjacent x3 y0 x4 y0)
    (adjacent x3 y0 x2 y0)
    (adjacent x3 y1 x3 y2)
    (adjacent x3 y1 x3 y0)
    (adjacent x3 y1 x4 y1)
    (adjacent x3 y1 x2 y1)
    (adjacent x3 y2 x3 y3)
    (adjacent x3 y2 x3 y1)
    (adjacent x3 y2 x4 y2)
    (adjacent x3 y2 x2 y2)
    (adjacent x3 y3 x3 y4)
    (adjacent x3 y3 x3 y2)
    (adjacent x3 y3 x4 y3)
    (adjacent x3 y3 x2 y3)
    (adjacent x3 y4 x3 y3)
    (adjacent x3 y4 x4 y4)
    (adjacent x3 y4 x2 y4)
    (adjacent x4 y0 x4 y1)
    (adjacent x4 y0 x3 y0)
    (adjacent x4 y1 x4 y2)
    (adjacent x4 y1 x4 y0)
    (adjacent x4 y1 x3 y1)
    (adjacent x4 y2 x4 y3)
    (adjacent x4 y2 x4 y1)
    (adjacent x4 y2 x3 y2)
    (adjacent x4 y3 x4 y4)
    (adjacent x4 y3 x4 y2)
    (adjacent x4 y3 x3 y3)
    (adjacent x4 y4 x4 y3)
    (adjacent x4 y4 x3 y4)
    ;; }} (auxiliary facts end)
)
(:goal (and
    ; TODO
))
)
