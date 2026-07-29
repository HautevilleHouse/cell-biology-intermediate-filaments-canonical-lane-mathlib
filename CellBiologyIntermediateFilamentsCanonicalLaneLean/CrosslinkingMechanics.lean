import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure CrosslinkingMechanicsPackage where
  crosslinkerType : Prop
  bindingAffinity : Prop
  bundlingCapacity : Prop
  gelFormation : Prop
  mechanicalStiffness : Prop

structure CrosslinkingMechanicsEvidence (C : CrosslinkingMechanicsPackage) where
  crosslinkerTypeClosed : C.crosslinkerType
  bindingAffinityClosed : C.bindingAffinity
  bundlingCapacityClosed : C.bundlingCapacity
  gelFormationClosed : C.gelFormation
  mechanicalStiffnessClosed : C.mechanicalStiffness

def CrosslinkingMechanicsClosed (C : CrosslinkingMechanicsPackage) : Prop :=
  C.crosslinkerType ∧ C.bindingAffinity ∧ C.bundlingCapacity ∧ C.gelFormation ∧ C.mechanicalStiffness

theorem crosslinking_mechanics_closed_from_evidence (C : CrosslinkingMechanicsPackage) (E : CrosslinkingMechanicsEvidence C) :
    CrosslinkingMechanicsClosed C := by
  exact And.intro E.crosslinkerTypeClosed
    (And.intro E.bindingAffinityClosed
      (And.intro E.bundlingCapacityClosed
        (And.intro E.gelFormationClosed E.mechanicalStiffnessClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse