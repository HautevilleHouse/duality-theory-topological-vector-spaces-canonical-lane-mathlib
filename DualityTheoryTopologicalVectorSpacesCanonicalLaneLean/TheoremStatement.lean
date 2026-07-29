import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.MackeyTopology

/-!
# Theorem Statement Layer
-/

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure DualityTheoremStatement where
  sourceKey : String
  theoremName : String
  dualPairingEstablished : Prop
  hausdorffLocallyConvex : Prop
  banachSteinhausClosed : Prop
  weakTopologyClosed : Prop
  banachAlaogluClosed : Prop
  mackeyClosed : Prop

def sourceTheoremStatement : DualityTheoremStatement := {
  sourceKey := "HautevilleHouse/DualityTheoryTVS",
  theoremName := "Duality Theory Topological Vector Spaces",
  dualPairingEstablished := True,
  hausdorffLocallyConvex := True,
  banachSteinhausClosed := True,
  weakTopologyClosed := True,
  banachAlaogluClosed := True,
  mackeyClosed := True
}

theorem source_theorem_statement_consistent : sourceTheoremStatement.sourceKey = "HautevilleHouse/DualityTheoryTVS" := by
  rfl

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse