import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.TopologicalVectorSpace
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure HahnBanachExtension (X : TopologicalVectorSpaceStructure) (X' : DualSpace X) where
  extensionProperty : ∀ (Y : Submodule ℝ X.carrier) (f : Y → ℝ) (linear : IsLinearMap ℝ f) (continuous : Continuous f),
    ∃ (g : X.carrier → ℝ) (linear' : IsLinearMap ℝ g) (continuous' : Continuous g), (∀ y : Y, g y = f y) ∧ (∀ x : X.carrier, |g x| ≤ 1)
  extensionPropertyClosed : extensionProperty

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse