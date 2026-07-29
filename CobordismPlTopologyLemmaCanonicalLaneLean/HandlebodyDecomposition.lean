import CobordismPlTopologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure HandlebodyDecompositionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  handleAttachments : List (Nat × Nat)
  handles : Prop
  attachingMaps : List (Type v → Type w)
  decompositionExists : Prop

structure HandlebodyDecompositionEvidence (H : HandlebodyDecompositionPackage) where
  handlesClosed : H.handles
  attachingMapsClosed : H.attachingMaps.length = H.handleAttachments.length
  decompositionExistsClosed : H.decompositionExists

def HandlebodyDecompositionClosed (H : HandlebodyDecompositionPackage) : Prop :=
  H.handles ∧ H.decompositionExists

theorem handlebody_decomposition_closed_from_evidence (H : HandlebodyDecompositionPackage)
    (E : HandlebodyDecompositionEvidence H) : HandlebodyDecompositionClosed H := by
  exact And.intro E.handlesClosed E.decompositionExistsClosed

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse
