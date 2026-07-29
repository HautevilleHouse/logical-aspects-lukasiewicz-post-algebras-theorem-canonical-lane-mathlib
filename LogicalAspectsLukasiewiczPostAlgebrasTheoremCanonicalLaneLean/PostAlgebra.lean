import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure PostAlgebra (n : ℕ) where
  carrier : Type u
  chain : Fin n → carrier
  operations : carrier → carrier → carrier
  axioms : Prop

def PostAlgebraClosed {n : ℕ} (P : PostAlgebra n) : Prop := P.axioms

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse