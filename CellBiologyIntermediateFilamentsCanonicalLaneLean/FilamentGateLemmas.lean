import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsCanonicalLaneLean.FilamentAssemblyBridge

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

def gateClosed (A : IntermediateFilamentAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : IntermediateFilamentAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse