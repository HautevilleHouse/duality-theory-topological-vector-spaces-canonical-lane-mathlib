import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesCanonicalLaneLean

structure HahnBanachPackage where
  extensionExists : Prop
  dominationPreserved : Prop
  space : TVSAdmittedSpace

structure HahnBanachEvidence (P : HahnBanachPackage) where
  extensionClosed : P.extensionExists
  dominationClosed : P.dominationPreserved

def HahnBanachClosed (P : HahnBanachPackage) : Prop :=
  P.extensionExists ∧ P.dominationPreserved

theorem hahn_banach_closed_from_evidence (P : HahnBanachPackage) (E : HahnBanachEvidence P) :
    HahnBanachClosed P := by
  exact And.intro E.extensionClosed E.dominationClosed

end DualityTheoryTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse