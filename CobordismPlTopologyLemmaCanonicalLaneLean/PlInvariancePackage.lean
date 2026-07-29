import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PlInvariancePackage where
  sourceMfld : Type
  targetMfld : Type
  plHomeo : Prop
  cobordismInvariant : Prop
  invariancePreserved : Prop

def PlInvarianceClosed (I : PlInvariancePackage) : Prop :=
  I.plHomeo ∧ I.cobordismInvariant ∧ I.invariancePreserved

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse