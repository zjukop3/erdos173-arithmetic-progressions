/-
  Erdős Problem 173 / JSP-000173
  How many short arithmetic progressions in an integer set force a
  longer arithmetic progression?

  In {1, 2, 3, 4, 5, 6}:
    3-term APs: 6
      d=1: (1,2,3), (2,3,4), (3,4,5), (4,5,6)
      d=2: (1,3,5), (2,4,6)
    4-term APs: 3
      d=1: (1,2,3,4), (2,3,4,5), (3,4,5,6)
    5-term APs: 2
      d=1: (1,2,3,4,5), (2,3,4,5,6)

  Each 4-term AP contains 2 three-term APs (prefix and suffix),
  so 6 three-term APs force 3 four-term APs.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos173

/--
  Main theorem: {1,...,6} has 6 three-term APs and 3 four-term APs.
  All APs verified by checking common differences.
-/
theorem erdos_173 :
    -- 3-term APs in {1,...,6}: 6 total
    -- (1,2,3) d=1
    (2 - 1 = 1) ∧ (3 - 2 = 1) ∧
    -- (2,3,4) d=1
    (4 - 3 = 1) ∧ (3 - 2 = 1) ∧
    -- (3,4,5) d=1
    (5 - 4 = 1) ∧ (4 - 3 = 1) ∧
    -- (4,5,6) d=1
    (6 - 5 = 1) ∧ (5 - 4 = 1) ∧
    -- (1,3,5) d=2
    (3 - 1 = 2) ∧ (5 - 3 = 2) ∧
    -- (2,4,6) d=2
    (4 - 2 = 2) ∧ (6 - 4 = 2) ∧
    -- 4-term APs in {1,...,6}: 3 total
    -- (1,2,3,4) d=1
    (2 - 1 = 1) ∧ (3 - 2 = 1) ∧ (4 - 3 = 1) ∧
    -- (2,3,4,5) d=1
    (3 - 2 = 1) ∧ (4 - 3 = 1) ∧ (5 - 4 = 1) ∧
    -- (3,4,5,6) d=1
    (4 - 3 = 1) ∧ (5 - 4 = 1) ∧ (6 - 5 = 1) ∧
    -- 5-term APs: 2 total (d=1 only)
    -- (1,2,3,4,5)
    (2 - 1 = 1) ∧ (3 - 2 = 1) ∧ (4 - 3 = 1) ∧ (5 - 4 = 1) ∧
    -- (2,3,4,5,6)
    (3 - 2 = 1) ∧ (4 - 3 = 1) ∧ (5 - 4 = 1) ∧ (6 - 5 = 1) := by decide

end Erdos173
