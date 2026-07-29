import canonicalLaneMathlib.AdmissibleClass
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.LukasiewiczAlgebra
import LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean.PostAlgebra

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure LukasiewiczRepresentation where
  algebra : LukasiewiczAlgebra
  post : PostAlgebra 2
  homomorphism : algebra.carrier → post.carrier
  preserves_operations : Prop

def LukasiewiczRepresentationClosed (R : LukasiewiczRepresentation) : Prop :=
  R.preserves_operations

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse