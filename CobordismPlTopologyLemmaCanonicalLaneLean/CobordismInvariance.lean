import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyLemmaCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure CobordismInvariancePackage {C : CobordismCategory} where
  homotopyInvariance : Prop
  plInvariance : Prop
  topologicalInvariance : Prop
  invarianceUnderSurgery : Prop

structure CobordismInvarianceEvidence {C : CobordismCategory}
    (P : CobordismInvariancePackage C) where
  homotopyInvarianceClosed : P.homotopyInvariance
  plInvarianceClosed : P.plInvariance
  topologicalInvarianceClosed : P.topologicalInvariance
  invarianceUnderSurgeryClosed : P.invarianceUnderSurgery

def CobordismInvarianceClosed {C : CobordismCategory}
    (P : CobordismInvariancePackage C) : Prop :=
  P.homotopyInvariance ∧ P.plInvariance ∧ P.topologicalInvariance ∧ P.invarianceUnderSurgery

theorem cobordism_invariance_closed_from_evidence {C : CobordismCategory}
    (P : CobordismInvariancePackage C) (E : CobordismInvarianceEvidence P) :
    CobordismInvarianceClosed P := by
  exact And.intro E.homotopyInvarianceClosed
    (And.intro E.plInvarianceClosed
      (And.intro E.topologicalInvarianceClosed E.invarianceUnderSurgeryClosed))

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse