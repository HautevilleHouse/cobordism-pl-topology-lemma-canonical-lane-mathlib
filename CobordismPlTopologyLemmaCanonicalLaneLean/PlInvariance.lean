import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PlInvariancePackage where
  plHomotopyInvariance : Prop
  plCobordismInvariance : Prop
  plDiffeomorphismInvariance : Prop

def PlInvarianceClosed (P : PlInvariancePackage) : Prop :=
  P.plHomotopyInvariance ∧ P.plCobordismInvariance ∧ P.plDiffeomorphismInvariance

theorem pl_invariance_closed (P : PlInvariancePackage) (h1 : P.plHomotopyInvariance)
    (h2 : P.plCobordismInvariance) (h3 : P.plDiffeomorphismInvariance) :
    PlInvarianceClosed P := by
  exact And.intro h1 (And.intro h2 h3)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse