import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PlCobordismClassPackage where
  dimension : Nat
  category : String
  cobordismGroup : Type
  classificationTheorem : Prop

def PlCobordismClassClosed (P : PlCobordismClassPackage) : Prop :=
  P.classificationTheorem

theorem pl_cobordism_class_closed (P : PlCobordismClassPackage) (h : P.classificationTheorem) :
    PlCobordismClassClosed P := h

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse