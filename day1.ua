# Experimental!
~ "helpers.ua" ~ ParseIntMatrix

# Input = &fras "example/day1_1.in"
Input ← &fras "input/day1.in"

# Part 1

Sorted         ← ≡⍆⍉ ParseIntMatrix
Distances      ← ⌵/-
ParseIntMatrix ← ≡(⊜⋕ ≠ @ .) ⊜∘ ≠ @\n.

MatrixA ← $ 1   2
          $ 3   4
⍤"Should parse MatrixA" ≍ [1_2 3_4] ParseIntMatrix MatrixA

ResultA ← °⋕/+ Distances Sorted Input

# Part 2

ParsedInput ← ⍉ ParseIntMatrix Input
ColA        ← ⊢ ParsedInput
ColB        ← ⊣ ParsedInput
ResultB     ← /+∵(×/+=ColB.)ColA

# Results

$"Part 1: _" ResultA
$"Part 2: _" ResultB
