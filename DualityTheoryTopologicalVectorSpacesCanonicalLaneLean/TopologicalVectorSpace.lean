import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure TopologicalVectorSpaceStructure where
  carrier : Type u
  vectorSpaceStructure : Module ℝ carrier
  topology : TopologicalSpace carrier
  continuousAddition : Continuous (λ (p : carrier × carrier) => p.1 + p.2)
  continuousScalar : Continuous (λ (p : ℝ × carrier) => p.1 • p.2)
  hausdorff : T2Space carrier

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse