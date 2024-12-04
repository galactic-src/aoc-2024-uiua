# Experimental!

# Input ← &fras "example/ex01_1.txt"
Input ← &fras "input/day1.in"

ParseInput ← ≡(⊜⋕ ≠ @ .) ⊜∘ ≠ @\n.

InputA ← $ 1   2
         $ 3   4
⍤ "Should parse InputA" ≍ [1_2 3_4] ParseInput InputA

Sorted    ← ≡⍆⍉ ParseInput
Distances ← ⌵/-
Result    ← °⋕/+ Distances Sorted Input

$"Part 1: _" Result
