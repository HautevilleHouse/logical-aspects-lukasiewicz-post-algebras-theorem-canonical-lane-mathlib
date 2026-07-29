import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure MVAlgebraPackage where
  base : PostAlgebraBase
  mvOperation : L.carrier → L.carrier → L.carrier
  mvAxioms : Prop
  latticeCompatible : Prop
  involutiveNegation : Prop
  divisibility : Prop

structure MVAlgebraEvidence (M : MVAlgebraPackage) where
  mvAxiomsClosed : M.mvAxioms
  latticeCompatibleClosed : M.latticeCompatible
  involutiveNegationClosed : M.involutiveNegation
  divisibilityClosed : M.divisibility

def MVAlgebraClosed (M : MVAlgebraPackage) : Prop :=
  M.mvAxioms ∧ M.latticeCompatible ∧ M.involutiveNegation ∧ M.divisibility

theorem mv_algebra_closed_from_evidence (M : MVAlgebraPackage) (E : MVAlgebraEvidence M) :
    MVAlgebraClosed M := by
  exact And.intro E.mvAxiomsClosed (And.intro E.latticeCompatibleClosed (And.intro E.involutiveNegationClosed E.divisibilityClosed))

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse