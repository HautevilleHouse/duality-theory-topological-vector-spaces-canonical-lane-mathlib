import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.TopologicalVectorSpace

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure DualSpace (X : TopologicalVectorSpaceStructure) where
  carrier : Type u
  linearFunctionals : carrier → (X.carrier → ℝ)
  continuous : ∀ f : carrier, Continuous (linearFunctionals f)

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse