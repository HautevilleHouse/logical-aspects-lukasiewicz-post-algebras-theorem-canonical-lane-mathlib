import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure LukasiewiczAlgebra where
  carrier : Type u
  additive : Add carrier
  mult : carrier → carrier → carrier
  negation : carrier → carrier
  implication : carrier → carrier → carrier
  unit : carrier
  zero : carrier
  axioms : Prop

def LukasiewiczAlgebraClosed (L : LukasiewiczAlgebra) : Prop := L.axioms

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse