import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure SurgeryPackage where
  handleDecomposition : Prop
  surgeryPreservesPl : Prop
  cobordismResult : Prop

def SurgeryClosed (S : SurgeryPackage) : Prop :=
  S.handleDecomposition ∧ S.surgeryPreservesPl ∧ S.cobordismResult

theorem surgery_closed (S : SurgeryPackage) (h1 : S.handleDecomposition)
    (h2 : S.surgeryPreservesPl) (h3 : S.cobordismResult) :
    SurgeryClosed S := by
  exact And.intro h1 (And.intro h2 h3)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse