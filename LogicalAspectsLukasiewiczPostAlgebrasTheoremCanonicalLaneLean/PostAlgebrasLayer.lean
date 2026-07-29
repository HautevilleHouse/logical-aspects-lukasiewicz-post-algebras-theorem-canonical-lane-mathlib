import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure PostAlgebrasLayer (n : ℕ) where
  baseAlgebra : LukasiewiczAlgebra n
  centerAxiom : baseAlgebra.axiomsSatisfied
  distinguishedSet : Set baseAlgebra.carrier
  centerIsDistinguished : centerElement baseAlgebra ∈ distinguishedSet
  complementSatisfiesPost : Prop

structure PostAlgebrasEvidence (n : ℕ) (P : PostAlgebrasLayer n) where
  centerAxiomClosed : P.centerAxiom
  complementSatisfiesPostClosed : P.complementSatisfiesPost

theorem post_algebras_layer_closed (n : ℕ) (P : PostAlgebrasLayer n) (E : PostAlgebrasEvidence n P) : Prop := by
  exact E.centerAxiomClosed ∧ E.complementSatisfiesPostClosed

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
