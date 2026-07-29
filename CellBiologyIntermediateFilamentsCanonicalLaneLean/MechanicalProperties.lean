import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure MechanicalPropertiesPackage where
  tensileStrength : Prop
  elasticityModulus : Prop
  viscoelasticResponse : Prop
  strainStiffening : Prop
  persistenceLength : Prop

structure MechanicalPropertiesEvidence (M : MechanicalPropertiesPackage) where
  tensileStrengthClosed : M.tensileStrength
  elasticityModulusClosed : M.elasticityModulus
  viscoelasticResponseClosed : M.viscoelasticResponse
  strainStiffeningClosed : M.strainStiffening
  persistenceLengthClosed : M.persistenceLength

def MechanicalPropertiesClosed (M : MechanicalPropertiesPackage) : Prop :=
  M.tensileStrength ∧ M.elasticityModulus ∧ M.viscoelasticResponse ∧ M.strainStiffening ∧ M.persistenceLength

theorem mechanical_properties_closed_from_evidence
    (M : MechanicalPropertiesPackage) (E : MechanicalPropertiesEvidence M) :
    MechanicalPropertiesClosed M := by
  exact And.intro E.tensileStrengthClosed
    (And.intro E.elasticityModulusClosed
      (And.intro E.viscoelasticResponseClosed
        (And.intro E.strainStiffeningClosed E.persistenceLengthClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
