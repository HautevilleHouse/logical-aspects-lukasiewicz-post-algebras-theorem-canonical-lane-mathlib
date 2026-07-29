import canonicalLaneMathlib.AdmissibleClass
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.PostAlgebraStructure

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure DeductiveSystem {L : LukasiewiczAlgebra} (P : PostAlgebraStructure L) where
  axiomSet : List L.carrier
  inferenceRules : Type u
  derivabilityRelation : L.carrier → Prop
  soundness : Prop
  completeness : Prop
  soundnessTerm : soundness
  completenessTerm : completeness

structure DeductiveSystemEvidence {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} (D : DeductiveSystem P) where
  soundnessClosed : D.soundness
  completenessClosed : D.completeness

def DeductiveSystemClosed {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} (D : DeductiveSystem P) : Prop :=
  D.soundness ∧ D.completeness

theorem deductive_system_closed_from_evidence {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} (D : DeductiveSystem P)
    (E : DeductiveSystemEvidence D) : DeductiveSystemClosed D := by
  exact And.intro E.soundnessClosed E.completenessClosed

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
