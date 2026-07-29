import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyIntermediateFilamentsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

def ConstrainedFilamentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_filament_endgame (A : AdmissibleClass) :
    ConstrainedFilamentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse