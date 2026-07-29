import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure LukasiewiczAlgebra (n : ℕ) where
  carrier : Type
  top : carrier
  bottom : carrier
  impl : carrier → carrier → carrier
  neg : carrier → carrier
  disj : carrier → carrier → carrier
  conj : carrier → carrier → carrier
  axiomsSatisfied : Prop

structure MVnChain (n : ℕ) extends LukasiewiczAlgebra n where
  chainOrder : carrier → carrier → Prop
  linearOrder : Prop
  chainAxiom : chainOrder top bottom → chainOrder bottom top → False

structure PostAlgebra (n : ℕ) extends LukasiewiczAlgebra n where
  distinguishedElements : carrier → Prop
  centerElement : carrier
  centerSpec : distinguishedElements centerElement
  axiomsSatisfiedPost : Prop

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
