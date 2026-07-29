import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyLemmaCanonicalLaneLean.PLInvariancePrinciples
import HautevilleHouse.CobordismPlTopologyLemmaCanonicalLaneLean.DualityTheorems

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLClassificationPackage (M : PLManifold n) (D : PLDualityPackage M) where
  classificationTheorem : Prop
  invariantsRecognizingManifolds : Prop
  completeInvariantSet : Prop
  classificationTheoremTerm : classificationTheorem
  invariantsRecognizingManifoldsTerm : invariantsRecognizingManifolds
  completeInvariantSetTerm : completeInvariantSet

structure PLClassificationEvidence {M : PLManifold n} {D : PLDualityPackage M}
  (C : PLClassificationPackage M D) where
  classificationTheoremClosed : C.classificationTheorem
  invariantsRecognizingManifoldsClosed : C.invariantsRecognizingManifolds
  completeInvariantSetClosed : C.completeInvariantSet

def PLClassificationClosed {M : PLManifold n} {D : PLDualityPackage M}
  (C : PLClassificationPackage M D) : Prop :=
  C.classificationTheorem ∧ C.invariantsRecognizingManifolds ∧ C.completeInvariantSet

theorem pl_classification_closed_from_evidence
  {M : PLManifold n} {D : PLDualityPackage M}
  (C : PLClassificationPackage M D) (E : PLClassificationEvidence C) :
  PLClassificationClosed C := by
  exact And.intro E.classificationTheoremClosed
    (And.intro E.invariantsRecognizingManifoldsClosed E.completeInvariantSetClosed)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse