import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure LukasiewiczAlgebra where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  negation : carrier → carrier
  implication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  mvAlgebraAxioms : Prop
  mvAlgebraAxiomsTerm : mvAlgebraAxioms

structure LukasiewiczAlgebraEvidence (L : LukasiewiczAlgebra) where
  mvAlgebraAxiomsClosed : L.mvAlgebraAxioms

def LukasiewiczAlgebraClosed (L : LukasiewiczAlgebra) : Prop :=
  L.mvAlgebraAxioms

theorem lukasiewicz_algebra_closed_from_evidence (L : LukasiewiczAlgebra)
    (E : LukasiewiczAlgebraEvidence L) : LukasiewiczAlgebraClosed L :=
  E.mvAlgebraAxiomsClosed

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
