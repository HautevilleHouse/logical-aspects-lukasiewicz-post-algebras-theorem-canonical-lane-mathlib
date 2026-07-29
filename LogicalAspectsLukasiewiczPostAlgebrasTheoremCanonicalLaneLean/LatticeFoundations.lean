import Mathlib

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure MVAlgebra (α : Type u) where
  bot : α
  top : α
  impl : α → α → α
  neg : α → α
  bot_lt_top : bot ≠ top
  impl_neg_neg : ∀ a b : α, impl a b = neg (neg a) ∨ neg (neg b)
  negation_involution : ∀ a : α, neg (neg a) = a
  impl_self : ∀ a : α, impl a a = top
  impl_bot : ∀ a : α, impl bot a = top
  impl_top : ∀ a : α, impl a top = top
  modus_ponens : ∀ a b : α, a ∧ impl a b = a ∧ b

def finiteMVAlgebra (α : Type u) [Fintype α] (M : MVAlgebra α) : Prop :=
  ∀ a : α, a ∈ Finset.univ

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse