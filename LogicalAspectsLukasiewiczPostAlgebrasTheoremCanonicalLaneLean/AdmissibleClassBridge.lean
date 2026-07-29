import canonicalLaneMathlib.AdmissibleClass
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.LukasiewiczAlgebra
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.PostAlgebra
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.LukasiewiczRepresentation

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure LukasiewiczAdmissibleClass where
  object : LukasiewiczAlgebra
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : LukasiewiczAdmissibleClass) : Prop :=
  LukasiewiczAlgebraClosed A.object

theorem bridge_from_admissible_class (A : LukasiewiczAdmissibleClass) : bridgeClosed A := by
  exact A.object.axioms

def gateClosed (A : LukasiewiczAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : LukasiewiczAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse