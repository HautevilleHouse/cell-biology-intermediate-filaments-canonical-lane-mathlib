import canonicalLaneMathlib.AdmissibleClass

/-!
# Mechanical Response Package
-/

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure MechanicalPackage where
  tensileStiffness : Prop
  extensibility : Prop
  viscoelasticBehavior : Prop
  forceTransmission : Prop

structure MechanicalEvidence (M : MechanicalPackage) where
  tensileStiffnessClosed : M.tensileStiffness
  extensibilityClosed : M.extensibility
  viscoelasticBehaviorClosed : M.viscoelasticBehavior
  forceTransmissionClosed : M.forceTransmission

def MechanicalClosed (M : MechanicalPackage) : Prop :=
  M.tensileStiffness ∧ M.extensibility ∧ M.viscoelasticBehavior ∧ M.forceTransmission

theorem mechanical_closed_from_evidence (M : MechanicalPackage) (E : MechanicalEvidence M) : MechanicalClosed M := by
  exact And.intro E.tensileStiffnessClosed (And.intro E.extensibilityClosed (And.intro E.viscoelasticBehaviorClosed E.forceTransmissionClosed))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
