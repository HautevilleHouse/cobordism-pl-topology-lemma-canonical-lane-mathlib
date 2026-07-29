import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLTriangulationPackage where
  manifold : Type u
  triangulation : Type v
  plStructure : Prop
  combinatorialEquivalence : Prop
  triangulationCompatible : Prop

structure PLTriangulationEvidence (P : PLTriangulationPackage) where
  plStructureClosed : P.plStructure
  combinatorialEquivalenceClosed : P.combinatorialEquivalence
  triangulationCompatibleClosed : P.triangulationCompatible

def PLTriangulationClosed (P : PLTriangulationPackage) : Prop :=
  P.plStructure ∧ P.combinatorialEquivalence ∧ P.triangulationCompatible

theorem pl_triangulation_closed_from_evidence (P : PLTriangulationPackage)
    (E : PLTriangulationEvidence P) : PLTriangulationClosed P := by
  exact And.intro E.plStructureClosed (And.intro E.combinatorialEquivalenceClosed E.triangulationCompatibleClosed)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse
