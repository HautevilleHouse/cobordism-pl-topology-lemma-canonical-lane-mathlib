import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLBordismPackage where
  dimension : Nat
  group : Type u
  cycles : Type v
  relations : Prop
  bordismGroupDefined : Prop

structure PLBordismEvidence (B : PLBordismPackage) where
  relationsClosed : B.relations
  bordismGroupDefinedClosed : B.bordismGroupDefined

def PLBordismClosed (B : PLBordismPackage) : Prop :=
  B.relations ∧ B.bordismGroupDefined

theorem pl_bordism_closed_from_evidence (B : PLBordismPackage)
    (E : PLBordismEvidence B) : PLBordismClosed B := by
  exact And.intro E.relationsClosed E.bordismGroupDefinedClosed

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse
