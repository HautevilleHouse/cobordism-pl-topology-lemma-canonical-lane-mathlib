import CobordismPlTopologyLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

structure CobordismPlAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  cobordism : Type w
  plStructure : Prop
  cobordismClassIdentified : Prop
  conclusion : cobordismClassIdentified

def AdmittedObjectClosed (O : CobordismPlAdmittedObject) : Prop :=
  O.cobordismClassIdentified

theorem theorem_statement_endgame (A : AdmissibleClass) :
    ConstrainedCobordismPlClosure A :=
  constrained_cobordism_pl_endgame A

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse