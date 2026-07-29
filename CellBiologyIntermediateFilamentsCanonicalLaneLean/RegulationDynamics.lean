import canonicalLaneMathlib.AdmissibleClass

/-!
# Regulation Dynamics Package
-/

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure RegulationPackage where
  crosslinkRegulation : Prop
  assemblyDisassemblyControl : Prop
  signalingInputs : Prop
  adaptationUnderStress : Prop

structure RegulationEvidence (R : RegulationPackage) where
  crosslinkRegulationClosed : R.crosslinkRegulation
  assemblyDisassemblyControlClosed : R.assemblyDisassemblyControl
  signalingInputsClosed : R.signalingInputs
  adaptationUnderStressClosed : R.adaptationUnderStress

def RegulationClosed (R : RegulationPackage) : Prop :=
  R.crosslinkRegulation ∧ R.assemblyDisassemblyControl ∧ R.signalingInputs ∧ R.adaptationUnderStress

theorem regulation_closed_from_evidence (R : RegulationPackage) (E : RegulationEvidence R) : RegulationClosed R := by
  exact And.intro E.crosslinkRegulationClosed (And.intro E.assemblyDisassemblyControlClosed (And.intro E.signalingInputsClosed E.adaptationUnderStressClosed))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
