import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.BridgeLemmas
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

def ConstrainedDualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_endgame (A : AdmissibleClass) :
  ConstrainedDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse
