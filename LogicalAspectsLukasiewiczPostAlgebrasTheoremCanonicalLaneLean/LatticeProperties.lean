import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure LatticeProperties (A : AdmissibleClass) where
  joinSemilattice : Prop
  meetSemilattice : Prop
  distributivity : Prop
  modularity : Prop
  complemented : Prop

structure LatticeEvidence (A : AdmissibleClass) (L : LatticeProperties A) where
  joinClosed : L.joinSemilattice
  meetClosed : L.meetSemilattice
  distributivityClosed : L.distributivity
  modularityClosed : L.modularity

theorem lattice_closed (A : AdmissibleClass) (L : LatticeProperties A) (E : LatticeEvidence A L) : Prop := by
  exact E.joinClosed ∧ E.meetClosed ∧ E.distributivityClosed ∧ E.modularityClosed

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
