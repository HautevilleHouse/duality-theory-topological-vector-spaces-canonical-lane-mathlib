import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.DualityPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure MackeyTopology {D : DualityPairing} where
  carrier : Type u
  topology : TopologicalSpace carrier
  mackeyArensTheorem : Prop
  mackeyArensTheoremTerm : mackeyArensTheorem

structure MackeyTopologyEvidence {D : DualityPairing} (M : MackeyTopology D) where
  mackeyArensTheoremClosed : M.mackeyArensTheorem

def MackeyTopologyClosed {D : DualityPairing} (M : MackeyTopology D) : Prop :=
  M.mackeyArensTheorem

theorem mackey_topology_closed_from_evidence {D : DualityPairing} (M : MackeyTopology D) (E : MackeyTopologyEvidence M) :
  MackeyTopologyClosed M := by
  exact E.mackeyArensTheoremClosed

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse
