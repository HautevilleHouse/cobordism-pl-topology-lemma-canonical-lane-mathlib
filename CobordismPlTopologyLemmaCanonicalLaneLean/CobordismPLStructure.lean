import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure PLManifold (n : Nat) where
  carrier : Type u
  topology : TopologicalSpace carrier
  plStructure : Prop
  hausdorffSecondCountable : Prop
  compactWithoutBoundary : Prop
  dimensionN : carrier.satisfiesDimension n
  plStructureTerm : plStructure
  hausdorffSecondCountableTerm : hausdorffSecondCountable
  compactWithoutBoundaryTerm : compactWithoutBoundary

structure Cobordism (M N : PLManifold n) where
  cobordismManifold : PLManifold (n+1)
  boundaryComponents : Prop
  mInBoundary : Inboundary M cobordismManifold
  nInBoundary : Inboundary N cobordismManifold
  boundaryComponentsTerm : boundaryComponents

structure Inboundary {n : Nat} (M : PLManifold n) (W : PLManifold (n+1)) where
  embedding : M.carrier → W.carrier
  topologicalEmbedding : Embedding embedding
  plEmbedding : PreservesPLStructure embedding
  boundaryCondition : embedding '' Set.univ = Set.univ

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse