import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure IntermediateFilamentStructure where
  filamentType : Type u
  monomerType : Type v
  assemblyState : Prop
  nucleotideBinding : Prop
  phosphorylationRegulation : Prop
  assemblyStateClosed : assemblyState
  nucleotideBindingClosed : nucleotideBinding
  phosphorylationRegulationClosed : phosphorylationRegulation

structure IntermediateFilamentStructureEvidence (F : IntermediateFilamentStructure) where
  assemblyStateClosed : F.assemblyState
  nucleotideBindingClosed : F.nucleotideBinding
  phosphorylationRegulationClosed : F.phosphorylationRegulation

def IntermediateFilamentStructureClosed (F : IntermediateFilamentStructure) : Prop :=
  F.assemblyState ∧ F.nucleotideBinding ∧ F.phosphorylationRegulation

theorem intermediate_filament_structure_closed_from_evidence
    (F : IntermediateFilamentStructure) (E : IntermediateFilamentStructureEvidence F) :
    IntermediateFilamentStructureClosed F := by
  exact And.intro E.assemblyStateClosed
    (And.intro E.nucleotideBindingClosed E.phosphorylationRegulationClosed)

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
