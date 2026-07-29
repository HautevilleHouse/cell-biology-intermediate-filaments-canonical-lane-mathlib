import canonicalLaneMathlib.AdmissibleClass

/-!
# Filament Assembly Package
-/

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure AssemblyPackage where
  subunitCoassembly : Prop
  polymerizationNucleation : Prop
  elongationMechanism : Prop
  dynamicTurnover : Prop

structure AssemblyEvidence (P : AssemblyPackage) where
  subunitCoassemblyClosed : P.subunitCoassembly
  polymerizationNucleationClosed : P.polymerizationNucleation
  elongationMechanismClosed : P.elongationMechanism
  dynamicTurnoverClosed : P.dynamicTurnover

def AssemblyClosed (P : AssemblyPackage) : Prop :=
  P.subunitCoassembly ∧ P.polymerizationNucleation ∧ P.elongationMechanism ∧ P.dynamicTurnover

theorem assembly_closed_from_evidence (P : AssemblyPackage) (E : AssemblyEvidence P) : AssemblyClosed P := by
  exact And.intro E.subunitCoassemblyClosed (And.intro E.polymerizationNucleationClosed (And.intro E.elongationMechanismClosed E.dynamicTurnoverClosed))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
