# Experimental!

# Input ← &fras "example/day3_1.in"
# Input ← &fras "example/day3_2.in"
Input ← &fras "input/day3.in"

MulRegex ← "(mul)\\((\\d{1,3}),(\\d{1,3})\\)"

Instructions₁ ← ≡↘₂ regex MulRegex Input

Result₁ ← /+≡(◇(/×⋕)) Instructions₁

DoRegex           ← "(do)\\(\\)"
DontRegex         ← "(don\'t)\\(\\)"
InstructionsRegex ← $"_|_|_" MulRegex DoRegex DontRegex
Instructions₂     ← ⬚"0" regex InstructionsRegex Input

InitialState       ← [0 1]
NextTotal          ← ◇+×⍚×⊃(⋕°□⊡2|⋕°□⊡3|⊡7|⊡6)
NextDoOrDont       ← °□± ×+⊃(=□"do"⊡4|⊡7|≠□"don't"⊡5)
ProcessInstruction ← [⊃(NextTotal|NextDoOrDont)]⊂
ProcessInstruction {"mul(2,2)" "mul" "2" "2" 0 0} [10 1]
ProcessInstruction {"do()" "0" "0" "0" "do" "0"} [10 0]
ProcessInstruction {"do()" "0" "0" "0" "do" "0"} [10 1]
ProcessInstruction {"don't()" "0" "0" "0" "0" "don't"} [10 1]
ProcessInstruction {"don't()" "0" "0" "0" "0" "don't"} [10 0]

Result₂ ← ∧ProcessInstruction Instructions₂ InitialState

$"Part 1: _" Result₁
$"Part 2: _" Result₂
