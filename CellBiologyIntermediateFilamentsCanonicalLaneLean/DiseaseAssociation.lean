import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

/-! 
# Disease Association Package
-/

structure DiseaseAssociationPackage {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    {M : MechanicalRolePackage N} {S : CellSignalingPackage M} where
  keratinMutation : Prop
  desminMutation : Prop
  laminMutation : Prop
  cancerMetastasis : Prop
  therapeuticTarget : Prop

structure DiseaseAssociationEvidence {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    {M : MechanicalRolePackage N} {S : CellSignalingPackage M}
    (D : DiseaseAssociationPackage S) where
  keratinMutationClosed : D.keratinMutation
  desminMutationClosed : D.desminMutation
  laminMutationClosed : D.laminMutation
  cancerMetastasisClosed : D.cancerMetastasis
  therapeuticTargetClosed : D.therapeuticTarget

def DiseaseAssociationClosed {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    {M : MechanicalRolePackage N} {S : CellSignalingPackage M}
    (D : DiseaseAssociationPackage S) : Prop :=
  D.keratinMutation ∧ D.desminMutation ∧ D.laminMutation ∧
  D.cancerMetastasis ∧ D.therapeuticTarget

theorem disease_association_closed_from_evidence
    {Cell : IntermediateFilamentCell} {Comp : IFComposition}
    {N : IFNetworkAssembly Comp} {M : MechanicalRolePackage N}
    {S : CellSignalingPackage M} (D : DiseaseAssociationPackage S)
    (E : DiseaseAssociationEvidence D) : DiseaseAssociationClosed D := by
  exact And.intro E.keratinMutationClosed
    (And.intro E.desminMutationClosed
      (And.intro E.laminMutationClosed
        (And.intro E.cancerMetastasisClosed E.therapeuticTargetClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse