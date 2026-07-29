import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsCanonicalLaneLean.IntermediateFilamentAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediteFilamentsCanonicalLaneLean

def bridgeClosed (A : IntermediateFilamentAdmissibleClass) : Prop :=
  IntermediateFilamentWitnessClosed A.object

theorem bridge_from_admissible_class (A : IntermediateFilamentAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion.1

end CellBiologyIntermediteFilamentsCanonicalLaneLean
end HautevilleHouse