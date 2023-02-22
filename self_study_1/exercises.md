# Exercise 1
## 1.1

$PS_1S_2S_3$

## 1.2
$V_1S_2S_3V_3$

# Exercise 2
Assume that .children on the bottommost node gives leaf and that leaf.children gives leaf, and that children2 gives the children of the children.

$
    T(n) =
    \begin{cases}
        max(value(n) + \Sigma(map(T, children2(n))), \Sigma(map(T, children(n)))) & n \text{ is a node} \\
        0 & n \text{ is a leaf}
    \end{cases}
$

```
func T(tree) {
    if (isLeaf(tree.node)) return 0
    if (tree.node.inviteval != null) return tree.node.inviteval
    tree.node.inviteval = max(
        tree.node.friendliness + sum(map(T)(tree.children2),
        sum(map(T)(tree.children))
    )
    return tree.node.inviteval
}
```

# Exercise 3
Nodes are visited at most twice, but only calculated once. Giving a running time of $\Theta(n)$.

# Exercise 4
You always pick the people that are immediately available from the root to the leaves. If you skip someone, even if you were able to invite everybody in the tree below them you would not end up with as many points, therefore you should pick them.

# Exercise 5
The running time is still linear, but half the nodes can be skipped, so the constant factor is smaller.

# CLRS3 33-1a
Prove that if $p_1 \times p_2$ is positive, then vector $p_1$ is clockwise from vector $p_2$ with respect to the origin (0,0) and that if this cross product is negative, then $p_1$ is counterclockwise from $p_2$.
