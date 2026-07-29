import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyLemmaCanonicalLaneLean.CobordismCategory
import HautevilleHouse.CobordismPlTopologyLemmaCanonicalLaneLean.PLStructure

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure ClassificationPackage {C : CobordismCategory} {P : PLStructure} where
  cobordismGroup : Type u
  generatorsClassified : Prop
  relationsIdentified : Prop
  plCobordismGroup : Prop

def ClassificationClosed {C : CobordismCategory} {P : PLStructure}
    (Cl : ClassificationPackage C P) : Prop :=
  Cl.generatorsClassified ∧ Cl.relationsIdentified ∧ Cl.plCobordismGroup

structure ClassificationEvidence {C : CobordismCategory} {P : PLStructure}
    (Cl : ClassificationPackage C P) where
  generatorsClassifiedClosed : Cl.generatorsClassified
  relationsIdentifiedClosed : Cl.relationsIdentified
  plCobordismGroupClosed : Cl.plCobordismGroup

theorem classification_closed_from_evidence {C : CobordismCategory} {P : PLStructure}
    (Cl : ClassificationPackage C P) (E : ClassificationEvidence Cl) :
    ClassificationClosed Cl := by
  exact And.intro E.generatorsClassifiedClosed
    (And.intro E.relationsIdentifiedClosed E.plCobordismGroupClosed)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse