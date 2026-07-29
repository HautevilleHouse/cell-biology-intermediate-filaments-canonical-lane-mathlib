import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

/-! 
# Intermediate Filament Network Package
-/

structure IntermediateFilamentCell where
  cellType : Type u
  cytoskeleton : Type v
  nucleus : Type w
  shapeRegulation : Prop
  mechanicalIntegrity : Prop
  shapeRegulationTerm : shapeRegulation
  mechanicalIntegrityTerm : mechanicalIntegrity

structure IFComposition where
  keratin : Prop
  vimentin : Prop
  desmin : Prop
  neurofilament : Prop
  lamin : Prop
  keratinTerm : keratin
  vimentinTerm : vimentin
  desminTerm : desmin
  neurofilamentTerm : neurofilament
  laminTerm : lamin

structure IFNetworkAssembly {Cell : IntermediateFilamentCell} (Comp : IFComposition) where
  filamentPolymerization : Prop
  bundling : Prop
  crossLinking : Prop
  networkMaturation : Prop
  assemblyRegulation : Prop
  filamentPolymerizationTerm : filamentPolymerization
  bundlingTerm : bundling
  crossLinkingTerm : crossLinking
  networkMaturationTerm : networkMaturation
  assemblyRegulationTerm : assemblyRegulation

def IFNetworkAssemblyClosed {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} (N : IFNetworkAssembly Comp) : Prop :=
  N.filamentPolymerization ∧ N.bundling ∧ N.crossLinking ∧
  N.networkMaturation ∧ N.assemblyRegulation

theorem if_network_assembly_closed_from_evidence
    {Cell : IntermediateFilamentCell} {Comp : IFComposition}
    (N : IFNetworkAssembly Comp) : IFNetworkAssemblyClosed N := by
  exact And.intro N.filamentPolymerizationTerm
    (And.intro N.bundlingTerm
      (And.intro N.crossLinkingTerm
        (And.intro N.networkMaturationTerm N.assemblyRegulationTerm)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse