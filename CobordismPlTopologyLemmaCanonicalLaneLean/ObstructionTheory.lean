import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure ObstructionTheoryPackage where
  targetDimension : Nat
  obstructionClass : Type u
  liftingProblem : Prop
  obstructionVanishes : Prop
  liftingExists : Prop

structure ObstructionTheoryEvidence (O : ObstructionTheoryPackage) where
  obstructionVanishesClosed : O.obstructionVanishes
  liftingExistsClosed : O.liftingExists

def ObstructionTheoryClosed (O : ObstructionTheoryPackage) : Prop :=
  O.obstructionVanishes ∧ O.liftingExists

theorem obstruction_theory_closed_from_evidence (O : ObstructionTheoryPackage)
    (E : ObstructionTheoryEvidence O) : ObstructionTheoryClosed O := by
  exact And.intro E.obstructionVanishesClosed E.liftingExistsClosed

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse
