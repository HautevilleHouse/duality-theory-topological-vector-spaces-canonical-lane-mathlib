import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure WeakTopologyPackage where
  originalSpace : Type u
  topology : TopologicalSpace originalSpace
  dualSpace : DualSpacePackage
  weakTopologyDefined : Prop
  weakStarTopologyDefined : Prop
  mackeyTopologyCompatible : Prop
  mackeyArensTheorem : Prop

def WeakTopologyClosed (W : WeakTopologyPackage) : Prop :=
  W.weakTopologyDefined ∧ W.weakStarTopologyDefined ∧ W.mackeyTopologyCompatible ∧ W.mackeyArensTheorem

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse