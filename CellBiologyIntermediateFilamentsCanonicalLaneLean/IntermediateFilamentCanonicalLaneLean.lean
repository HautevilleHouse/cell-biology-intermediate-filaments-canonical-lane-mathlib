import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsCanonicalLaneLean.FilamentPolymerization
import CellBiologyIntermediateFilamentsCanonicalLaneLean.CrosslinkingMechanics
import CellBiologyIntermediateFilamentsCanonicalLaneLean.DynamicAssembly
import CellBiologyIntermediateFilamentsCanonicalLaneLean.MechanicalProperties

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure IntermediateFilamentAdmissibleClass where
  polymerization : FilamentPolymerizationPackage
  crosslinking : CrosslinkingMechanicsPackage
  dynamics : DynamicAssemblyPackage
  mechanics : MechanicalPropertiesPackage
  polymerizationEvidence : FilamentPolymerizationEvidence polymerization
  crosslinkingEvidence : CrosslinkingMechanicsEvidence crosslinking
  dynamicsEvidence : DynamicAssemblyEvidence dynamics
  mechanicsEvidence : MechanicalPropertiesEvidence mechanics

def bridgeClosed (A : IntermediateFilamentAdmissibleClass) : Prop :=
  FilamentPolymerizationClosed A.polymerization ∧
  CrosslinkingMechanicsClosed A.crosslinking ∧
  DynamicAssemblyClosed A.dynamics ∧
  MechanicalPropertiesClosed A.mechanics

def gateClosed (A : IntermediateFilamentAdmissibleClass) : Prop :=
  A.polymerizationEvidence.criticalConcentrationClosed

def ConstrainedIFClosure (A : IntermediateFilamentAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : IntermediateFilamentAdmissibleClass) :
    bridgeClosed A := by
  exact And.intro (filament_polymerization_closed_from_evidence A.polymerization A.polymerizationEvidence)
    (And.intro (crosslinking_mechanics_closed_from_evidence A.crosslinking A.crosslinkingEvidence)
      (And.intro (dynamic_assembly_closed_from_evidence A.dynamics A.dynamicsEvidence)
        (mechanical_properties_closed_from_evidence A.mechanics A.mechanicsEvidence)))

theorem gate_from_admissible_class (A : IntermediateFilamentAdmissibleClass) :
    gateClosed A := by
  exact A.polymerizationEvidence.criticalConcentrationClosed

theorem constrained_if_endgame (A : IntermediateFilamentAdmissibleClass) :
    ConstrainedIFClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse