import CobordismPlTopologyLemmaCanonicalLaneLean.CobordismPlBridgeLemmas
import CobordismPlTopologyLemmaCanonicalLaneLean.CobordismPlGateLemmas

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

def ConstrainedCobordismPlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_pl_endgame (A : AdmissibleClass) :
    ConstrainedCobordismPlClosure A :=
  And.intro (cobordism_pl_bridge_from_admissible_class A) (cobordism_pl_gate_from_admissible_class A)

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse