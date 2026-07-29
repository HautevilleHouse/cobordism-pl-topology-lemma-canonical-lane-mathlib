import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure CobordismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  cobordismManifold : Type w
  cobordismTopology : TopologicalSpace cobordismManifold
  boundaryComponents : Prop
  cobordismEquivalence : Prop
  plStructure : Prop

structure CobordismEvidence (C : CobordismPackage) where
  boundaryComponentsClosed : C.boundaryComponents
  cobordismEquivalenceClosed : C.cobordismEquivalence
  plStructureClosed : C.plStructure

def CobordismClosed (C : CobordismPackage) : Prop :=
  C.boundaryComponents ∧ C.cobordismEquivalence ∧ C.plStructure

theorem cobordism_closed_from_evidence (C : CobordismPackage) (E : CobordismEvidence C) :
    CobordismClosed C := by
  exact And.intro E.boundaryComponentsClosed (And.intro E.cobordismEquivalenceClosed E.plStructureClosed)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse