import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure AssemblyKineticsPackage where
  nucleationRate : Prop
  elongationRate : Prop
  bundlingProperties : Prop
  disassemblyRegulation : Prop

structure AssemblyKineticsEvidence (P : AssemblyKineticsPackage) where
  nucleationRateClosed : P.nucleationRate
  elongationRateClosed : P.elongationRate
  bundlingPropertiesClosed : P.bundlingProperties
  disassemblyRegulationClosed : P.disassemblyRegulation

def AssemblyKineticsClosed (P : AssemblyKineticsPackage) : Prop :=
  P.nucleationRate ∧ P.elongationRate ∧ P.bundlingProperties ∧ P.disassemblyRegulation

theorem assembly_kinetics_closed_from_evidence
    (P : AssemblyKineticsPackage) (E : AssemblyKineticsEvidence P) :
    AssemblyKineticsClosed P := by
  exact And.intro E.nucleationRateClosed
    (And.intro E.elongationRateClosed
      (And.intro E.bundlingPropertiesClosed E.disassemblyRegulationClosed))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
