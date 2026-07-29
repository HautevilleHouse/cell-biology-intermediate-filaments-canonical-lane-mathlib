import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

/-! 
# Mechanical Role Package
-/

structure MechanicalRolePackage {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp} where
  tensileStrength : Prop
  viscoelasticity : Prop
  strainStiffening : Prop
  resilience : Prop
  cellMigrationSupport : Prop

structure MechanicalRoleEvidence {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    (M : MechanicalRolePackage N) where
  tensileStrengthClosed : M.tensileStrength
  viscoelasticityClosed : M.viscoelasticity
  strainStiffeningClosed : M.strainStiffening
  resilienceClosed : M.resilience
  cellMigrationSupportClosed : M.cellMigrationSupport

def MechanicalRoleClosed {Cell : IntermediateFilamentCell}
    {Comp : IFComposition} {N : IFNetworkAssembly Comp}
    (M : MechanicalRolePackage N) : Prop :=
  M.tensileStrength ∧ M.viscoelasticity ∧ M.strainStiffening ∧
  M.resilience ∧ M.cellMigrationSupport

theorem mechanical_role_closed_from_evidence
    {Cell : IntermediateFilamentCell} {Comp : IFComposition}
    {N : IFNetworkAssembly Comp} (M : MechanicalRolePackage N)
    (E : MechanicalRoleEvidence M) : MechanicalRoleClosed M := by
  exact And.intro E.tensileStrengthClosed
    (And.intro E.viscoelasticityClosed
      (And.intro E.strainStiffeningClosed
        (And.intro E.resilienceClosed E.cellMigrationSupportClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse