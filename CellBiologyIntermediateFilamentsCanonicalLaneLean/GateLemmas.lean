import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyIntermediateFilamentsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse