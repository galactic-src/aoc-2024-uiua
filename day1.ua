# Experimental!

Input ← &fras "input/day1.in"

ParseInput ← ⍉≡(⊜⋕ ≠ @ .) ⊜∘ ≠ @\n.

InputA ← $ 1   2
         $ 3   4
⍤ "Should parse InputA" ≍ [1_3 2_4] ParseInput InputA

### "/home/jon/dev/aoc/aoc-2024-uiua/day1.ua:3:9: Opening files is not supported in this environment" 

Sorted    ← ≡⍆ ParseInput
Distances ← ⌵/-
ResultA   ← °⋕/+ Distances Sorted Input

###

ParsedInput ← ParseInput Input
ColA        ← ⊢ ParsedInput
ColB        ← ⊣ ParsedInput
ResultB     ← /+∵(×/+=ColB.)ColA

###

$"Part 1: _" ResultA
$"Part 2: _" ResultB
