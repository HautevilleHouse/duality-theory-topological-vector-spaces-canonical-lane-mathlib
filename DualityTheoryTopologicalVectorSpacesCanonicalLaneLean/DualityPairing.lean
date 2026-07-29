import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure DualityPairing where
  X : Type u
  Y : Type u
  pairing : X → Y → ℝ
  separatePoints : Prop
  separatePointsTerm : separatePoints

structure DualityPairingEvidence (D : DualityPairing) where
  separatePointsClosed : D.separatePoints

def DualityPairingClosed (D : DualityPairing) : Prop :=
  D.separatePoints

theorem duality_pairing_closed_from_evidence (D : DualityPairing) (E : DualityPairingEvidence D) :
  DualityPairingClosed D := by
  exact E.separatePointsClosed

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse
