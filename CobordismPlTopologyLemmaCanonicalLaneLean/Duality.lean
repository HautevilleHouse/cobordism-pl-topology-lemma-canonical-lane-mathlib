import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure DualityPackage where
  poincareDuality : Prop
  lefschetzDuality : Prop
  intersectionPairing : Prop
  signatureInvariant : Prop

def DualityClosed (D : DualityPackage) : Prop :=
  D.poincareDuality ∧ D.lefschetzDuality ∧ D.intersectionPairing ∧ D.signatureInvariant

structure DualityEvidence (D : DualityPackage) where
  poincareDualityClosed : D.poincareDuality
  lefschetzDualityClosed : D.lefschetzDuality
  intersectionPairingClosed : D.intersectionPairing
  signatureInvariantClosed : D.signatureInvariant

theorem duality_closed_from_evidence (D : DualityPackage) (E : DualityEvidence D) :
    DualityClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.lefschetzDualityClosed
      (And.intro E.intersectionPairingClosed E.signatureInvariantClosed))

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse