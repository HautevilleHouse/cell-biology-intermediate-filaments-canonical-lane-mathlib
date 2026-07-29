import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsCanonicalLaneLean.FilamentGateLemmas

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

def ConstrainedIntermediateFilamentClosure (A : IntermediateFilamentAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_intermediate_filament_endgame (A : IntermediateFilamentAdmissibleClass) : ConstrainedIntermediateFilamentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse