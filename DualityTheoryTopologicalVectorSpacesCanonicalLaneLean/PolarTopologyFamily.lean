import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure PolarTopologyFamily where
  dualSpace : DualSpacePackage
  bornology : Set (Set dualSpace.originalSpace)
  polarsGiven : Prop
  locallyConvex : Prop
  hausdorff : Prop

def PolarTopologyFamilyClosed (P : PolarTopologyFamily) : Prop :=
  P.polarsGiven ∧ P.locallyConvex ∧ P.hausdorff

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse