import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure DualityPairingPackage {X : Type u} [TopologicalSpace X] [AddCommGroup X] 
  {Y : Type v} [TopologicalSpace Y] [AddCommGroup Y] [Module ℝ Y] where
  pairing : X → Y → ℝ
  separatePoints : ∀ x ≠ 0, ∃ y, pairing x y ≠ 0
  separateDual : ∀ y ≠ 0, ∃ x, pairing x y ≠ 0
  bilinearContinuous : Continuous (λ (p : X × Y) => pairing p.1 p.2)

structure DualityPairingEvidence {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
  [AddCommGroup X] [AddCommGroup Y] [Module ℝ Y] (D : DualityPairingPackage X Y) where
  separatePointsClosed : D.separatePoints
  separateDualClosed : D.separateDual
  bilinearContinuousClosed : D.bilinearContinuous

def DualityPairingClosed {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
  [AddCommGroup X] [AddCommGroup Y] [Module ℝ Y] (D : DualityPairingPackage X Y) : Prop :=
  D.separatePoints ∧ D.separateDual ∧ D.bilinearContinuous

theorem duality_pairing_closed_from_evidence {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
  [AddCommGroup X] [AddCommGroup Y] [Module ℝ Y] (D : DualityPairingPackage X Y)
  (E : DualityPairingEvidence D) : DualityPairingClosed D := by
  exact And.intro E.separatePointsClosed (And.intro E.separateDualClosed E.bilinearContinuousClosed)

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse