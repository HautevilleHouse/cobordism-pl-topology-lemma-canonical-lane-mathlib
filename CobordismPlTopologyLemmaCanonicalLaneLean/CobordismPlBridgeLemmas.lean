import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyLemmaCanonicalLaneLean.CobordismPlAdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CobordismPlWitnessClosed A.object

theorem cobordism_pl_bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CobordismPlTopologyLemmaCanonicalLaneLean
end HautevilleHouse