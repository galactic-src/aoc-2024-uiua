# Experimental!
~ "helpers.ua" ~ ParseArrays

Input ← ParseArrays &fras "input/day2.in"

FirstReport ← ⊢ Input
ZipWithNext ← |1 ⊟ ⇌↘1⇌ : ↘1.
Diffs       ← |1 /- ZipWithNext

AllIncreasingOrDecreasing ← |1 =⌵/+ ± ⟜(⊣△)
AllNearby                 ← |1 =/+≤3⌵ ⟜(⊣△)
IsSafe                    ← |1 × AllIncreasingOrDecreasing ⟜AllNearby

Result₁ ← /+≡⍚(IsSafe Diffs) Input

$"Part 1: _" Result₁
