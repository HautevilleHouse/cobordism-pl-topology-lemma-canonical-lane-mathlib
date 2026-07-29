import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure CobordismClassificationPackage where
  dim : Nat
  oriented : Bool
  cobordismGroup : Type
  groupAbelian : Prop
  classificationComplete : Prop

def CobordismClassificationClosed (C : CobordismClassificationPackage) : Prop :=
  C.groupAbelian ∧ C.classificationComplete

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse