import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure CompletenessTheoremPackage where
  postAlgebra : PostAlgebraExtension
  deductiveSystem : Prop
  soundness : Prop
  completeness : Prop
  finiteModelProperty : Prop

structure CompletenessTheoremEvidence (C : CompletenessTheoremPackage) where
  deductiveSystemClosed : C.deductiveSystem
  soundnessClosed : C.soundness
  completenessClosed : C.completeness
  finiteModelPropertyClosed : C.finiteModelProperty

def CompletenessTheoremClosed (C : CompletenessTheoremPackage) : Prop :=
  C.deductiveSystem ∧ C.soundness ∧ C.completeness ∧ C.finiteModelProperty

theorem completeness_theorem_closed_from_evidence (C : CompletenessTheoremPackage) (E : CompletenessTheoremEvidence C) :
    CompletenessTheoremClosed C := by
  exact And.intro E.deductiveSystemClosed (And.intro E.soundnessClosed (And.intro E.completenessClosed E.finiteModelPropertyClosed))

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse