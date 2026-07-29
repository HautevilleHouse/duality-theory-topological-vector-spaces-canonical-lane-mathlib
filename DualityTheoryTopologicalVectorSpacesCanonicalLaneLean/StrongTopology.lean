import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure StrongTopologyPackage where
  dualSpace : DualSpacePackage
  boundedSets : Set (Set (dualSpace.originalSpace))
  convergenceUniform : Prop
  barrelCondition : Prop
  completenessCondition : Prop

def StrongTopologyClosed (S : StrongTopologyPackage) : Prop :=
  S.convergenceUniform ∧ S.barrelCondition ∧ S.completenessCondition

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse