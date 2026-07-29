import canonicalLaneMathlib.AdmissibleClass
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.RepresentationTheorem

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure CompletenessTheoremPackage {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} {R : RepresentationTheoremPackage P} where
  formulaModel : Type u
  validityImpliesTheorem : Prop
  theoremImpliesValidity : Prop
  completeness : Prop

structure CompletenessTheoremEvidence {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} {R : RepresentationTheoremPackage P}
    (C : CompletenessTheoremPackage R) where
  validityImpliesTheoremClosed : C.validityImpliesTheorem
  theoremImpliesValidityClosed : C.theoremImpliesValidity
  completenessClosed : C.completeness

def CompletenessTheoremClosed {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} {R : RepresentationTheoremPackage P}
    (C : CompletenessTheoremPackage R) : Prop :=
  C.validityImpliesTheorem ∧ C.theoremImpliesValidity ∧ C.completeness

theorem completeness_theorem_closed_from_evidence {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} {R : RepresentationTheoremPackage P}
    (C : CompletenessTheoremPackage R) (E : CompletenessTheoremEvidence C) :
    CompletenessTheoremClosed C := by
  exact And.intro E.validityImpliesTheoremClosed
    (And.intro E.theoremImpliesValidityClosed E.completenessClosed)

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
