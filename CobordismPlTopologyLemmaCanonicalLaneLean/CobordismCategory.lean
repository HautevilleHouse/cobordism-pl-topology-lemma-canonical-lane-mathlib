import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure CobordismCategory where
  sourceManifold : Type u
  targetManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  cobordismManifold : Type u
  cobordismTopology : TopologicalSpace cobordismManifold
  boundaryComponents : Prop
  orientationCompatible : Prop
  dimension : Nat
  dimensionCondition : dimension = 3 → (sourceManifold → targetManifold) :=
     fun h => by
       exact fun x => x

def CobordismCategoryClosed (C : CobordismCategory) : Prop :=
  C.boundaryComponents ∧ C.orientationCompatible

structure CobordismCategoryEvidence (C : CobordismCategory) where
  boundaryComponentsClosed : C.boundaryComponents
  orientationCompatibleClosed : C.orientationCompatible

theorem cobordism_category_closed_from_evidence (C : CobordismCategory)
    (E : CobordismCategoryEvidence C) : CobordismCategoryClosed C := by
  exact And.intro E.boundaryComponentsClosed E.orientationCompatibleClosed

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse