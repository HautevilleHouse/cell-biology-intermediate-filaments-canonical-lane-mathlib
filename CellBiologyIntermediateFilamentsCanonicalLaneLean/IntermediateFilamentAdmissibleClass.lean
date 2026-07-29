import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure IntermediateFilamentAdmittedObject where
  cellType : Type
  filamentNetwork : cellType → Type
  intermediateFilamentPresent : Prop
  cytoskeletalIntegrity : Prop
  assemblyDisassemblyBalance : Prop
  phosphorylationState : Prop
  mutationStatus : Prop
  conclusion : cytoskeletalIntegrity ∧ assemblyDisassemblyBalance

def IntermediateFilamentAdmissibleClass : Type := AdmissibleClass

def IntermediateFilamentWitnessClosed (O : IntermediateFilamentAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse