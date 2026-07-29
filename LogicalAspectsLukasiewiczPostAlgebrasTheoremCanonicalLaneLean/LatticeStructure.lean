import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean

structure LukasiewiczChain where
  carrier : Type u
  le : carrier → carrier → Prop
  top : carrier
  bot : carrier
  implication : carrier → carrier → carrier
  negation : carrier → carrier

structure PostAlgebraBase where
  L : LukasiewiczChain
  constants : Nat → L.carrier
  latticeOrder : Lattice L.carrier
  boundedOrder : BoundedOrder L.carrier
  deMorgan : DeMorgan L.carrier
  implicationDistributes : Prop
  negationInvolutive : Prop

structure LatticeStructurePackage where
  base : PostAlgebraBase
  latticeComplete : LatticeComplete Lattice L.carrier
  filterStructure : Filter L.carrier
  idealStructure : Ideal L.carrier
  primeFilterExists : Prop
  primeIdealExists : Prop

end LogicalAspectsLukasiewiczPostAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse