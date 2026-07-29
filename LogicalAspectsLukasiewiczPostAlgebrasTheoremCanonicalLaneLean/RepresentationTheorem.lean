import canonicalLaneMathlib.AdmissibleClass
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.PostAlgebraStructure

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure RepresentationTheoremPackage {L : LukasiewiczAlgebra}
    (P : PostAlgebraStructure L) where
  representationType : Type u
  homomorphismExists : Prop
  homomorphismInjective : Prop
  representationComplete : Prop

structure RepresentationTheoremEvidence {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} (R : RepresentationTheoremPackage P) where
  homomorphismExistsClosed : R.homomorphismExists
  homomorphismInjectiveClosed : R.homomorphismInjective
  representationCompleteClosed : R.representationComplete

def RepresentationTheoremClosed {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} (R : RepresentationTheoremPackage P) : Prop :=
  R.homomorphismExists ∧ R.homomorphismInjective ∧ R.representationComplete

theorem representation_theorem_closed_from_evidence {L : LukasiewiczAlgebra}
    {P : PostAlgebraStructure L} (R : RepresentationTheoremPackage P)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.homomorphismExistsClosed
    (And.intro E.homomorphismInjectiveClosed E.representationCompleteClosed)

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
