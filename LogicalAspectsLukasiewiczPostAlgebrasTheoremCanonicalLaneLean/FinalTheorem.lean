import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

def ConstrainedLogicalAspectsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_logical_aspects_endgame (A : AdmissibleClass) :
    ConstrainedLogicalAspectsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse