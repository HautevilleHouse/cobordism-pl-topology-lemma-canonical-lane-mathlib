import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLAdmittedObject where
  M : Type
  top : TopologicalSpace M
  plStructure : Prop
  closed : Prop
  dimensionN : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : PLAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse