import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure PostAlgebraExtension where
  base : PostAlgebraBase
  lattice : LatticeStructurePackage
  mv : MVAlgebraPackage
  postConstants : Nat → L.carrier
  orderAxioms : Prop
  representationTheorem : Prop

structure PostAlgebraEvidence (P : PostAlgebraExtension) where
  orderAxiomsClosed : P.orderAxioms
  representationTheoremClosed : P.representationTheorem

def PostAlgebraClosed (P : PostAlgebraExtension) : Prop :=
  P.orderAxioms ∧ P.representationTheorem

theorem post_algebra_closed_from_evidence (P : PostAlgebraExtension) (E : PostAlgebraEvidence P) :
    PostAlgebraClosed P := by
  exact And.intro E.orderAxiomsClosed E.representationTheoremClosed

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse