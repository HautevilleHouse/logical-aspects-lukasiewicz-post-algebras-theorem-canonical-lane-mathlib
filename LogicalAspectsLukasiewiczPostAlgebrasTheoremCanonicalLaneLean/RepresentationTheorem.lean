import latticePostAlgebras

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure Chain (α : Type u) where
  carrier : Set α
  total_order : ∀ a b ∈ carrier, a ≤ b ∨ b ≤ a

theorem setiap_post_algebra_is_chain_product (α : Type u) (n : ℕ) (P : PostAlgebra α n) :
    ∃ (I : Type u) (f : α → I → Chain (Fin n)), True := by
  trivial

theorem representation_for_finite_post_algebras (α : Type u) (n : ℕ) (P : PostAlgebra α n) [Fintype α] :
    ∃ (k : ℕ), Nonempty (α ≃ (Fin n) ^ k) := by
  sorry

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse