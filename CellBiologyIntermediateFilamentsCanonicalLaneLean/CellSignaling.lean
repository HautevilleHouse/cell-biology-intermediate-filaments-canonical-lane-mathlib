import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

/-! 
# Cell Signaling Package
-/

structure CellSignalingPackage {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    (M : MechanicalRolePackage N) where
  mechanotransduction : Prop
  kinaseScaffolding : Prop
  geneExpressionRegulation : Prop
  apoptosisSignaling : Prop

structure CellSignalingEvidence {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    {M : MechanicalRolePackage N}
    (S : CellSignalingPackage M) where
  mechanotransductionClosed : S.mechanotransduction
  kinaseScaffoldingClosed : S.kinaseScaffolding
  geneExpressionRegulationClosed : S.geneExpressionRegulation
  apoptosisSignalingClosed : S.apoptosisSignaling

def CellSignalingClosed {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    {M : MechanicalRolePackage N} (S : CellSignalingPackage M) : Prop :=
  S.mechanotransduction ∧ S.kinaseScaffolding ∧
  S.geneExpressionRegulation ∧ S.apoptosisSignaling

theorem cell_signaling_closed_from_evidence
    {Cell : IntermediateFilamentCell} {Comp : IFComposition}
    {N : IFNetworkAssembly Comp} {M : MechanicalRolePackage N}
    (S : CellSignalingPackage M) (E : CellSignalingEvidence S) :
    CellSignalingClosed S := by
  exact And.intro E.mechanotransductionClosed
    (And.intro E.kinaseScaffoldingClosed
      (And.intro E.geneExpressionRegulationClosed E.apoptosisSignalingClosed))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse