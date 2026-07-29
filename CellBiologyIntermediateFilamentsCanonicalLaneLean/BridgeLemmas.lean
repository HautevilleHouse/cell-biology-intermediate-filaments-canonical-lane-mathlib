import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyIntermediateFilamentsCanonicalLaneLean.IntermediateFilamentAssembly

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FilamentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse