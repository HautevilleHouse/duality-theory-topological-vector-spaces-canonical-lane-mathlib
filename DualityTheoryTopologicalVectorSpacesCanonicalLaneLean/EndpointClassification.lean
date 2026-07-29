import DualityTheoryTopologicalVectorSpacesCanonicalLaneLean.ReflexiveSpaces

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure EndpointClassificationPackage {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {B : BanachSteinhausPackage R} {Ref : ReflexiveSpacePackage B} where
  isReflexive : Prop
  canonicalEmbeddingIsomorphism : Prop
  weakCompactUnitBall : Prop
  isReflexiveClosed : isReflexive
  canonicalEmbeddingIsomorphismClosed : canonicalEmbeddingIsomorphism
  weakCompactUnitBallClosed : weakCompactUnitBall

structure EndpointClassificationEvidence {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {B : BanachSteinhausPackage R} {Ref : ReflexiveSpacePackage B}
  (E : EndpointClassificationPackage G R B Ref) where
  isReflexiveClosed : E.isReflexive
  canonicalEmbeddingIsomorphismClosed : E.canonicalEmbeddingIsomorphism
  weakCompactUnitBallClosed : E.weakCompactUnitBall

def EndpointClassificationClosed {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {B : BanachSteinhausPackage R} {Ref : ReflexiveSpacePackage B}
  (E : EndpointClassificationPackage G R B Ref) : Prop :=
  E.isReflexive ∧ E.canonicalEmbeddingIsomorphism ∧ E.weakCompactUnitBall

theorem endpoint_classification_closed_from_evidence {G : DualityPairingPackage X Y} 
  {R : ContinuousDualPackage G} {B : BanachSteinhausPackage R} {Ref : ReflexiveSpacePackage B}
  (E : EndpointClassificationPackage G R B Ref) (Ev : EndpointClassificationEvidence E) :
  EndpointClassificationClosed E := by
  exact And.intro Ev.isReflexiveClosed (And.intro Ev.canonicalEmbeddingIsomorphismClosed Ev.weakCompactUnitBallClosed)

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse