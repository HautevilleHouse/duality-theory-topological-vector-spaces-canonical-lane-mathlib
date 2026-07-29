import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TVSAdmittedObject where
  dualPairing : Type
  topology : TopologicalSpace dualPairing
  hausdorff : Prop
  locallyConvex : Prop
  banachSteinhaus : Prop
  conclusion : banachSteinhaus

def TVSWitnessClosed (O : TVSAdmittedObject) : Prop :=
  O.banachSteinhaus

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse
