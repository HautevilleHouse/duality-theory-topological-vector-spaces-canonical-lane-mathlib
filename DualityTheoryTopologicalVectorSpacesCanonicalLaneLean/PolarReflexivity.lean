import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure PolarReflexivityPackage where
  polarSet : Prop
  bidualIsomorphism : Prop
  reflexivity : Prop

def PolarReflexivityClosed (P : PolarReflexivityPackage) : Prop :=
  P.polarSet ∧ P.bidualIsomorphism ∧ P.reflexivity

theorem polar_reflexivity_closed (P : PolarReflexivityPackage) (h : PolarReflexivityClosed P) :
    PolarReflexivityClosed P := h

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse