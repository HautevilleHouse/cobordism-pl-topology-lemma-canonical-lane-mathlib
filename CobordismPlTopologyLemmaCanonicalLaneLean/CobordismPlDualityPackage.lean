import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure CobordismPlDualityPackage where
  dim : Nat
  poincareDual : Prop
  intersectionForm : Type
  signatureDefined : Prop
  dualityHolds : Prop

def DualityClosed (D : CobordismPlDualityPackage) : Prop :=
  D.poincareDual ∧ D.dualityHolds

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse