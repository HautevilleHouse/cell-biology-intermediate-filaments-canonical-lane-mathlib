import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure PhosphorylationRegulationPackage where
  kinaseActivity : Prop
  phosphataseActivity : Prop
  phosphorylationState : Prop
  assemblyState : Prop
  disassemblySignal : Prop

structure PhosphorylationRegulationEvidence (P : PhosphorylationRegulationPackage) where
  kinaseActivityClosed : P.kinaseActivity
  phosphataseActivityClosed : P.phosphataseActivity
  phosphorylationStateClosed : P.phosphorylationState
  assemblyStateClosed : P.assemblyState
  disassemblySignalClosed : P.disassemblySignal

def PhosphorylationRegulationClosed (P : PhosphorylationRegulationPackage) : Prop :=
  P.kinaseActivity ∧ P.phosphataseActivity ∧ P.phosphorylationState ∧ P.assemblyState ∧ P.disassemblySignal

theorem phosphorylation_regulation_closed_from_evidence (P : PhosphorylationRegulationPackage) (E : PhosphorylationRegulationEvidence P) : PhosphorylationRegulationClosed P := by
  exact And.intro E.kinaseActivityClosed (And.intro E.phosphataseActivityClosed (And.intro E.phosphorylationStateClosed (And.intro E.assemblyStateClosed E.disassemblySignalClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse