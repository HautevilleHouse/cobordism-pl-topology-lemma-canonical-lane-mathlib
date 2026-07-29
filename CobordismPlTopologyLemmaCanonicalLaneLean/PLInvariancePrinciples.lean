import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyLemmaCanonicalLaneLean.CobordismPLStructure

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLInvariancePackage (M N : PLManifold n) (C : Cobordism M N) where
  homotopyInvariance : Prop
  orientationInvariance : Prop
  simpleHomotopyEquivalence : M ≃ₚₗ N
  homotopyInvarianceTerm : homotopyInvariance
  orientationInvarianceTerm : orientationInvariance
  simpleHomotopyEquivalenceTerm : simpleHomotopyEquivalence

structure PLInvarianceEvidence {M N : PLManifold n} {C : Cobordism M N} (P : PLInvariancePackage M N C) where
  homotopyInvarianceClosed : P.homotopyInvariance
  orientationInvarianceClosed : P.orientationInvariance
  simpleHomotopyEquivalenceClosed : 
    (P.simpleHomotopyEquivalence).homotopyEquivalence ∧
    (P.simpleHomotopyEquivalence).simpleStructure

def PLInvarianceClosed {M N : PLManifold n} {C : Cobordism M N} (P : PLInvariancePackage M N C) : Prop :=
  P.homotopyInvariance ∧ P.orientationInvariance ∧
  (P.simpleHomotopyEquivalence).homotopyEquivalence ∧
  (P.simpleHomotopyEquivalence).simpleStructure

theorem pl_invariance_closed_from_evidence
  {M N : PLManifold n} {C : Cobordism M N}
  (P : PLInvariancePackage M N C) (E : PLInvarianceEvidence P) :
  PLInvarianceClosed P := by
  exact And.intro E.homotopyInvarianceClosed
    (And.intro E.orientationInvarianceClosed
      (And.intro E.simpleHomotopyEquivalenceClosed.1
        E.simpleHomotopyEquivalenceClosed.2))

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse