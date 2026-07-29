import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLStructurePackage where
  simplexFamily : Type u
  plAtlas : Prop
  transitionMapsPL : Prop
  triangulationCompatible : Prop
  subdivisionStability : Prop

structure PLStructureEvidence (P : PLStructurePackage) where
  plAtlasClosed : P.plAtlas
  transitionMapsPLClosed : P.transitionMapsPL
  triangulationCompatibleClosed : P.triangulationCompatible
  subdivisionStabilityClosed : P.subdivisionStability

def PLStructureClosed (P : PLStructurePackage) : Prop :=
  P.plAtlas ∧ P.transitionMapsPL ∧ P.triangulationCompatible ∧ P.subdivisionStability

theorem pl_structure_closed_from_evidence (P : PLStructurePackage) (E : PLStructureEvidence P) :
    PLStructureClosed P := by
  exact And.intro E.plAtlasClosed (And.intro E.transitionMapsPLClosed (And.intro E.triangulationCompatibleClosed E.subdivisionStabilityClosed))

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse