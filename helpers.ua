ParseMatrix ← ≡(⊜⋕ ≠ @ .) ⊜∘ ≠ @\n.

Matrix₁ ← $ 1   2
          $ 3   4
⍤ "Should parse Matrix₁" ≍ [1_2 3_4] ParseMatrix Matrix₁

ParseArrays ← |1 ≡⍚(⊜⋕ ≠ @ .) ⊜□≠@\n .

Arrays₁ ← $ 1
         $ 2 3
ParseArrays Arrays₁
⍤ "Should parse different-length arrays" ≍ {[1] [2 3]} ParseArrays Arrays₁
