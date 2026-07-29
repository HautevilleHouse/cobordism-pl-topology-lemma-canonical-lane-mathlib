import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure InvariancePackage where
  homotopyInvariance : Prop
  plInvariance : Prop
  dualityInvariance : Prop
  cobordismInvariance : Prop

structure InvarianceEvidence (I : InvariancePackage) where
  homotopyInvarianceClosed : I.homotopyInvariance
  plInvarianceClosed : I.plInvariance
  dualityInvarianceClosed : I.dualityInvariance
  cobordismInvarianceClosed : I.cobordismInvariance

def InvarianceClosed (I : InvariancePackage) : Prop :=
  I.homotopyInvariance ∧ I.plInvariance ∧ I.dualityInvariance ∧ I.cobordismInvariance

theorem invariance_closed_from_evidence (I : InvariancePackage) (E : InvarianceEvidence I) :
    InvarianceClosed I := by
  exact And.intro E.homotopyInvarianceClosed (And.intro E.plInvarianceClosed (And.intro E.dualityInvarianceClosed E.cobordismInvarianceClosed))

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse