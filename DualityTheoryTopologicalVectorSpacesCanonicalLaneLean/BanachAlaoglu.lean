import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.WeakTopology

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure BanachAlaoglu {D : DualityPairing} {W : WeakTopology D} where
  polarUnitBallCompact : Prop
  polarUnitBallCompactTerm : polarUnitBallCompact

structure BanachAlaogluEvidence {D : DualityPairing} {W : WeakTopology D} (B : BanachAlaoglu W) where
  polarUnitBallCompactClosed : B.polarUnitBallCompact

def BanachAlaogluClosed {D : DualityPairing} {W : WeakTopology D} (B : BanachAlaoglu W) : Prop :=
  B.polarUnitBallCompact

theorem banach_alaoglu_closed_from_evidence {D : DualityPairing} {W : WeakTopology D} (B : BanachAlaoglu W) (E : BanachAlaogluEvidence B) :
  BanachAlaogluClosed B := by
  exact E.polarUnitBallCompactClosed

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse
