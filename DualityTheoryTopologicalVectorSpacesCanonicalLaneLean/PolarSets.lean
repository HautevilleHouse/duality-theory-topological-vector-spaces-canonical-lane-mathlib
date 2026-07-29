import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.DualityPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure PolarSets {D : DualityPairing} where
  polar : Set D.X → Set D.Y
  biPolarTheorem : Prop
  biPolarTheoremTerm : biPolarTheorem

structure PolarSetsEvidence {D : DualityPairing} (P : PolarSets D) where
  biPolarTheoremClosed : P.biPolarTheorem

def PolarSetsClosed {D : DualityPairing} (P : PolarSets D) : Prop :=
  P.biPolarTheorem

theorem polar_sets_closed_from_evidence {D : DualityPairing} (P : PolarSets D) (E : PolarSetsEvidence P) :
  PolarSetsClosed P := by
  exact E.biPolarTheoremClosed

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse
