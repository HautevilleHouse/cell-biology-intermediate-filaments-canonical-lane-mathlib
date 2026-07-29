import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedFilamentClass
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FilamentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse