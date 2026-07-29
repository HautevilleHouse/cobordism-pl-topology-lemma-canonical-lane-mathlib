import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyLemmaCanonicalLaneLean.CobordismPlAdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem cobordism_pl_gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse