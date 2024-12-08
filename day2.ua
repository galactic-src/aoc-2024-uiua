# Experimental!
~ "helpers.ua" ~ ParseArrays

# Input ← ParseArrays &fras "example/day2_1.in"
Input ← ParseArrays &fras "input/day2.in"

ZipWithNext ← |1 ⊟ ⇌↘1⇌ : ↘1.
Diffs       ← |1 /- ZipWithNext

AllIncreasingOrDecreasing ← |1 =⌵/+ ± ⟜(⊣△)
AllNearby                 ← |1 =/+≤3⌵ ⟜(⊣△)
IsSafe                    ← |1 × AllIncreasingOrDecreasing ⟜AllNearby

Result₁ ← /+≡⍚(IsSafe Diffs) Input

DropEach ← ≡(▽°□⊢ ⊙°□)⊙□⍉⊞≠□.⇡⧻.
IsSafe₂  ← >0/+≡(IsSafe Diffs) DropEach

Result₂ ← /+≡(IsSafe₂°□) Input

$"Part 1: _" Result₁
$"Part 2: _" Result₂
