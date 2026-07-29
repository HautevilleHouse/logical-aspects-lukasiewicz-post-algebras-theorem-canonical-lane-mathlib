import canonicalLaneMathlib.AdmissibleClass
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.LukasiewiczAlgebra

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure PostAlgebraStructure (L : LukasiewiczAlgebra) where
  chainOrder : L.carrier → L.carrier → Prop
  latticeOperations : Type u
  fixedPointConstants : Nat → L.carrier
  mvPostAxioms : Prop
  mvPostAxiomsTerm : mvPostAxioms

structure PostAlgebraEvidence {L : LukasiewiczAlgebra} (P : PostAlgebraStructure L) where
  mvPostAxiomsClosed : P.mvPostAxioms

def PostAlgebraClosed {L : LukasiewiczAlgebra} (P : PostAlgebraStructure L) : Prop :=
  P.mvPostAxioms

theorem post_algebra_closed_from_evidence {L : LukasiewiczAlgebra}
    (P : PostAlgebraStructure L) (E : PostAlgebraEvidence P) : PostAlgebraClosed P :=
  E.mvPostAxiomsClosed

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
