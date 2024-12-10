ParseIntMatrix ← ≡(⊜⋕ ≠ @ .) ⊜∘ ≠ @\n.

Matrix₁ ← $ 1   2
          $ 3   4
⍤ "Should parse Matrix₁" ≍ [1_2 3_4] ParseIntMatrix Matrix₁

ParseCharMatrix = partition identity != @\n.

ParseArrays ← |1 ≡⍚(⊜⋕ ≠ @ .) ⊜□≠@\n .

Arrays₁ ← $ 1
          $ 2 3
