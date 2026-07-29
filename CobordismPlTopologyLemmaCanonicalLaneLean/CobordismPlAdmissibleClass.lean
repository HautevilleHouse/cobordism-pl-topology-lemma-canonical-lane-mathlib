import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure CobordismPlAdmittedObject where
  mfld : Type
  top : TopologicalSpace mfld
  plStructure : Prop
  compact : Prop
  boundary : Prop
  conclusion : plStructure ∧ compact ∧ boundary

def CobordismPlWitnessClosed (O : CobordismPlAdmittedObject) : Prop :=
  O.plStructure ∧ O.compact ∧ O.boundary

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse