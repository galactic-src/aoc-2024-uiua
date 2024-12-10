# Experimental!
~ "helpers.ua" ~ ParseCharMatrix

# Input ← ParseCharMatrix &fras "example/day4_1.in"
Input ← ParseCharMatrix &fras "input/day4.in"

Patterns₁ ← [
  # forward diagonal
  ⟜⇌[0_0 1_1 2_2 3_3]
  # backward diagonal
  ⟜⇌[3_0 2_1 1_2 0_3]
  # lines
  ⟜⇌[3_0 3_1 3_2 3_3]
  ⟜⇌[0_3 1_3 2_3 3_3]
]

InputGrids₁ ← ≡≡□ ◫[4 4] ⌝↘[3 3] Input
FindXmases  ← ≡(≍"XMAS") ⊡ Patterns₁ °□
Result₁     ← /+/+/+≡≡(FindXmases) InputGrids₁

$"Part 1: _" Result₁

# generate transpose and reflections
# Patterns₂ ← [
#   ⟜⇌⍉⟜≡⇌⟜⍉[
#     "M.S"
#     ".A."
#     "M.S"
#   ]
# ]

Patterns₂ ← [
  ⟜⇌[0_0 2_0 1_1 0_2 2_2]
  ⟜⇌[0_0 0_2 1_1 2_0 2_2]
]

# Patterns₂

InputGrids₂ ← ≡≡□ ◫ [3 3] ⌝↘ [2 2] Input

# InputGrids₂
# ⊞(≍?⊙(°□)≠@.’) Patterns₂ InputGrids₂
FindMases ← ≡(≍"MMASS") ⊡ Patterns₂ °□

Result₂ ← /+/+/+≡≡(FindMases) InputGrids₂

$"Part 2: _" Result₂
