import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure DualSpacePackage where
  originalSpace : Type u
  topology : TopologicalSpace originalSpace
  dualSpace : Type v
  dualTopology : TopologicalSpace dualSpace
  pairing : originalSpace → dualSpace → ℝ
  linearityInFirst : ∀ (x y : originalSpace) (f : dualSpace), pairing (x + y) f = pairing x f + pairing y f
  linearityInSecond : ∀ (x : originalSpace) (f g : dualSpace), pairing x (f + g) = pairing x f + pairing x g
  continuityFirst : ∀ (f : dualSpace), Continuous (λ x : originalSpace => pairing x f)
  continuitySecond : ∀ (x : originalSpace), Continuous (λ f : dualSpace => pairing x f)

structure DualSpaceEvidence (D : DualSpacePackage) where
  linearityInFirstClosed : D.linearityInFirst
  linearityInSecondClosed : D.linearityInSecond
  continuityFirstClosed : D.continuityFirst
  continuitySecondClosed : D.continuitySecond

def DualSpaceClosed (D : DualSpacePackage) : Prop :=
  D.linearityInFirst ∧ D.linearityInSecond ∧ D.continuityFirst ∧ D.continuitySecond

theorem dual_space_closed_from_evidence (D : DualSpacePackage) (E : DualSpaceEvidence D) :
    DualSpaceClosed D := by
  exact And.intro E.linearityInFirstClosed (And.intro E.linearityInSecondClosed (And.intro E.continuityFirstClosed E.continuitySecondClosed))

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse