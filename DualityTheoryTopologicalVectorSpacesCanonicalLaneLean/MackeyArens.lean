import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.TopologicalVectorSpace
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.DualSpace
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.WeakTopology

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure MackeyArensTheorem (X : TopologicalVectorSpaceStructure) (X' : DualSpace X) where
  mackeyTopology : TopologicalSpace X.carrier
  mackeyTopologyIsCompatible : ContinuousLinearEquiv ℝ (X.carrier, mackeyTopology) (X.carrier, (WeakTopology X X').weakTopology)
  mackeyTopologyIsMackey : ∀ (τ : TopologicalSpace X.carrier), (ContinuousLinearEquiv ℝ (X.carrier, τ) (X.carrier, (WeakTopology X X').weakTopology)) → τ ≥ mackeyTopology → τ = mackeyTopology
  mackeyTopologyIsCompatibleClosed : mackeyTopologyIsCompatible
  mackeyTopologyIsMackeyClosed : mackeyTopologyIsMackey

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse