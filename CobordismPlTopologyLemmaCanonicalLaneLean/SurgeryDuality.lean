import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure SurgeryDualityPackage where
  manifold : Type u
  dimension : Nat
  bordismGroup : Type v
  dualClass : Prop
  poincareDualityPairing : Prop

structure SurgeryDualityEvidence (S : SurgeryDualityPackage) where
  dualClassClosed : S.dualClass
  poincareDualityPairingClosed : S.poincareDualityPairing

def SurgeryDualityClosed (S : SurgeryDualityPackage) : Prop :=
  S.dualClass ∧ S.poincareDualityPairing

theorem surgery_duality_closed_from_evidence (S : SurgeryDualityPackage)
    (E : SurgeryDualityEvidence S) : SurgeryDualityClosed S := by
  exact And.intro E.dualClassClosed E.poincareDualityPairingClosed

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse
