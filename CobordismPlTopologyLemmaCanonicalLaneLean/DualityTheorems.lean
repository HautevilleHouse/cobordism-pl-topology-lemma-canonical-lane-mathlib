import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyLemmaCanonicalLaneLean.CobordismPLStructure

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLDualityPackage (M : PLManifold n) where
  poincareDuality : Prop
  lefschetzDuality : Prop
  dualCellStructure : Prop
  poincareDualityTerm : poincareDuality
  lefschetzDualityTerm : lefschetzDuality
  dualCellStructureTerm : dualCellStructure

structure PLDualityEvidence (D : PLDualityPackage M) where
  poincareDualityClosed : D.poincareDuality
  lefschetzDualityClosed : D.lefschetzDuality
  dualCellStructureClosed : D.dualCellStructure

def PLDualityClosed (D : PLDualityPackage M) : Prop :=
  D.poincareDuality ∧ D.lefschetzDuality ∧ D.dualCellStructure

theorem pl_duality_closed_from_evidence (D : PLDualityPackage M) (E : PLDualityEvidence D) :
  PLDualityClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.lefschetzDualityClosed E.dualCellStructureClosed)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse