# Experimental!

# Input ← &fras "example/ex01_1.txt"
Input ← &fras "input/day1.in"

ParseInput ← ⍉≡(⊜⋕ ≠ @ .) ⊜∘ ≠ @\n.

InputA ← $ 1   2
         $ 3   4
⍤ "Should parse InputA" ≍ [1_3 2_4] ParseInput InputA

# Part 1

Sorted    ← ≡⍆ ParseInput
Distances ← ⌵/-
ResultA   ← °⋕/+ Distances Sorted Input

# Part 2

ParsedInput ← ParseInput Input
ColA        ← ⊢ ParsedInput
ColB        ← ⊣ ParsedInput
ResultB     ← /+∵(×/+=ColB.)ColA

# Results

$"Part 1: _" ResultA
$"Part 2: _" ResultB
