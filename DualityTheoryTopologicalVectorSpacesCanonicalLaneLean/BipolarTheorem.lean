import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.TopologicalVectorSpace
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure BipolarTheorem (X : TopologicalVectorSpaceStructure) (X' : DualSpace X) where
  polar : Set X.carrier → Set X.carrier
  bipolarIsClosure : ∀ (S : Set X.carrier), polar (polar S) = closure (convexHull ℝ (S ∪ {0}))
  bipolarIsClosureClosed : bipolarIsClosure

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse