import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure DynamicAssemblyPackage where
  nucleationStep : Prop
  elongationMechanism : Prop
  annealingAllowed : Prop
  severingEnzymes : Prop
  turnoverRate : Prop

structure DynamicAssemblyEvidence (D : DynamicAssemblyPackage) where
  nucleationStepClosed : D.nucleationStep
  elongationMechanismClosed : D.elongationMechanism
  annealingAllowedClosed : D.annealingAllowed
  severingEnzymesClosed : D.severingEnzymes
  turnoverRateClosed : D.turnoverRate

def DynamicAssemblyClosed (D : DynamicAssemblyPackage) : Prop :=
  D.nucleationStep ∧ D.elongationMechanism ∧ D.annealingAllowed ∧ D.severingEnzymes ∧ D.turnoverRate

theorem dynamic_assembly_closed_from_evidence (D : DynamicAssemblyPackage) (E : DynamicAssemblyEvidence D) :
    DynamicAssemblyClosed D := by
  exact And.intro E.nucleationStepClosed
    (And.intro E.elongationMechanismClosed
      (And.intro E.annealingAllowedClosed
        (And.intro E.severingEnzymesClosed E.turnoverRateClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse