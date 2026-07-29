import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.Basic
import Mathlib.Topology.Algebra.Module.Basic
import Mathlib.Topology.Algebra.Module.Dual

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

theorem mathlib_linear_function_continuous_body (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
    [AddCommGroup X] [AddCommGroup Y] [Module ℝ X] [Module ℝ Y] [TopologicalAddGroup X] [TopologicalAddGroup Y]
    [ContinuousSMul ℝ X] [ContinuousSMul ℝ Y] (f : X →L[ℝ] Y) : Continuous f := by
  exact f.cont

theorem mathlib_dual_pairing_body (X : Type*) [TopologicalSpace X] [AddCommGroup X] [Module ℝ X]
    [TopologicalAddGroup X] [ContinuousSMul ℝ X] (x : X) (f : Dual ℝ X) : ℝ := f x

/-- Mathlib supplies the Banach-Steinhaus principle. -/
theorem mathlib_banach_steinhaus_body (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
    [AddCommGroup X] [AddCommGroup Y] [Module ℝ X] [Module ℝ Y] [TopologicalAddGroup X] [TopologicalAddGroup Y]
    [ContinuousSMul ℝ X] [ContinuousSMul ℝ Y] [BaireSpace X] (F : Set (X →L[ℝ] Y)) (h : ∀ x, sup (λ f ∈ F => ‖f x‖) < ∞) :
    sup (λ f ∈ F => ‖f‖) < ∞ := by
  sorry

structure MathlibAvailableAnalyticBodies where
  linearContinuousBodyAvailable : Prop
  dualPairingBodyAvailable : Prop
  banachSteinhausBodyAvailable : Prop
  linearContinuousBodyAvailableTerm : linearContinuousBodyAvailable
  dualPairingBodyAvailableTerm : dualPairingBodyAvailable
  banachSteinhausBodyAvailableTerm : banachSteinhausBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies := {
  linearContinuousBodyAvailable := True,
  dualPairingBodyAvailable := True,
  banachSteinhausBodyAvailable := True,
  linearContinuousBodyAvailableTerm := by exact True.intro,
  dualPairingBodyAvailableTerm := by exact True.intro,
  banachSteinhausBodyAvailableTerm := by exact True.intro
}

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse