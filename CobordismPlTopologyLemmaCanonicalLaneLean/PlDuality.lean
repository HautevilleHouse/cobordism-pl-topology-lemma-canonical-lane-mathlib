import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PlDualityPackage where
  poincareDuality : Prop
  lefschetzDuality : Prop
  alexanderDuality : Prop

def PlDualityClosed (P : PlDualityPackage) : Prop :=
  P.poincareDuality ∧ P.lefschetzDuality ∧ P.alexanderDuality

theorem pl_duality_closed (P : PlDualityPackage) (h1 : P.poincareDuality)
    (h2 : P.lefschetzDuality) (h3 : P.alexanderDuality) :
    PlDualityClosed P := by
  exact And.intro h1 (And.intro h2 h3)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse