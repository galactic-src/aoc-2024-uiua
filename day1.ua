# Experimental!
~ "helpers.ua" ~ ParseMatrix

Input ← &fras "input/day1.in"

# Part 1

Sorted    ← ≡⍆⍉ ParseMatrix
Distances ← ⌵/-
ResultA   ← °⋕/+ Distances Sorted Input

# Part 2

ParsedInput ← ⍉ ParseMatrix Input
ColA        ← ⊢ ParsedInput
ColB        ← ⊣ ParsedInput
ResultB     ← /+∵(×/+=ColB.)ColA

# Results

$"Part 1: _" ResultA
$"Part 2: _" ResultB
