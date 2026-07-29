import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure PolymerizationDynamicsPackage where
  nucleationStep : Prop
  elongationStep : Prop
  annealingStep : Prop
  fragmentationStep : Prop
  dynamicInstabilityModel : Prop

structure PolymerizationDynamicsEvidence (P : PolymerizationDynamicsPackage) where
  nucleationStepClosed : P.nucleationStep
  elongationStepClosed : P.elongationStep
  annealingStepClosed : P.annealingStep
  fragmentationStepClosed : P.fragmentationStep
  dynamicInstabilityModelClosed : P.dynamicInstabilityModel

def PolymerizationDynamicsClosed (P : PolymerizationDynamicsPackage) : Prop :=
  P.nucleationStep ∧ P.elongationStep ∧ P.annealingStep ∧ P.fragmentationStep ∧ P.dynamicInstabilityModel

theorem polymerization_dynamics_closed_from_evidence
    (P : PolymerizationDynamicsPackage) (E : PolymerizationDynamicsEvidence P) :
    PolymerizationDynamicsClosed P := by
  exact And.intro E.nucleationStepClosed
    (And.intro E.elongationStepClosed
      (And.intro E.annealingStepClosed
        (And.intro E.fragmentationStepClosed E.dynamicInstabilityModelClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
