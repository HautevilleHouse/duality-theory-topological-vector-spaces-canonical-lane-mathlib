import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.MackeyArens

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure GeometrizationPackage {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {M : MackeyArensPackage R} where
  mackeyTopologyCompat : Prop
  weakTopologyCompat : Prop
  strongTopologyCompat : Prop
  closedGraphTheorem : Prop
  openMappingTheorem : Prop

structure GeometrizationEvidence {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {M : MackeyArensPackage R} 
  (Z : GeometrizationPackage G R M) where
  mackeyTopologyCompatClosed : Z.mackeyTopologyCompat
  weakTopologyCompatClosed : Z.weakTopologyCompat
  strongTopologyCompatClosed : Z.strongTopologyCompat
  closedGraphTheoremClosed : Z.closedGraphTheorem
  openMappingTheoremClosed : Z.openMappingTheorem

def GeometrizationClosed {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {M : MackeyArensPackage R} 
  (Z : GeometrizationPackage G R M) : Prop :=
  Z.mackeyTopologyCompat ∧ Z.weakTopologyCompat ∧ Z.strongTopologyCompat ∧
  Z.closedGraphTheorem ∧ Z.openMappingTheorem

theorem geometrization_closed_from_evidence {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {M : MackeyArensPackage R} 
  (Z : GeometrizationPackage G R M) (E : GeometrizationEvidence Z) :
  GeometrizationClosed Z := by
  exact And.intro E.mackeyTopologyCompatClosed
    (And.intro E.weakTopologyCompatClosed
      (And.intro E.strongTopologyCompatClosed
        (And.intro E.closedGraphTheoremClosed E.openMappingTheoremClosed)))

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse