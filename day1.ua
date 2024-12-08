# Experimental!
~ "helpers.ua" ~ ParseMatrix

# Input = &fras "example/day1_1.in"
Input ← &fras "input/day1.in"

# Part 1

Sorted      ← ≡⍆⍉ ParseMatrix
Distances   ← ⌵/-
ParseMatrix ← ≡(⊜⋕ ≠ @ .) ⊜∘ ≠ @\n.

MatrixA ← $ 1   2
          $ 3   4
⍤"Should parse MatrixA" ≍ [1_2 3_4] ParseMatrix MatrixA

ResultA ← °⋕/+ Distances Sorted Input

# Part 2

ParsedInput ← ⍉ ParseMatrix Input
ColA        ← ⊢ ParsedInput
ColB        ← ⊣ ParsedInput
ResultB     ← /+∵(×/+=ColB.)ColA

# Results

$"Part 1: _" ResultA
$"Part 2: _" ResultB
