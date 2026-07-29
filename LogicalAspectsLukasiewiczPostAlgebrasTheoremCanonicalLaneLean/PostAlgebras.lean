import latticeLatticeFoundations

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure PostAlgebra (α : Type u) (n : ℕ) where
  mv : MVAlgebra α
  center : α → α
  center_idempotent : ∀ a : α, center (center a) = center a
  center_bot : center mv.bot = mv.bot
  center_top : center mv.top = mv.top
  center_mono : ∀ a b : α, mv.impl a b = mv.top → mv.impl (center a) (center b) = mv.top
  n_valued : Fintype α ∧ Fintype.card α = n
  order_linear : ∀ a b : α, mv.impl a b = mv.top ∨ mv.impl b a = mv.top
  negation_center : ∀ a : α, mv.neg (center a) = center (mv.neg a)

theorem post_algebra_characterization (α : Type u) (n : ℕ) (P : PostAlgebra α n) :
    Fintype.card α = n := P.n_valued.2

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse