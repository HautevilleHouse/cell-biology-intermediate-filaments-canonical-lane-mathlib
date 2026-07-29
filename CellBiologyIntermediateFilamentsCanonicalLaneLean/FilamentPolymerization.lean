import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure FilamentPolymerizationPackage where
  monomerConcentration : Prop
  nucleationRate : Prop
  elongationRate : Prop
  criticalConcentration : Prop
  treadmillingSupported : Prop

structure FilamentPolymerizationEvidence (F : FilamentPolymerizationPackage) where
  monomerConcentrationClosed : F.monomerConcentration
  nucleationRateClosed : F.nucleationRate
  elongationRateClosed : F.elongationRate
  criticalConcentrationClosed : F.criticalConcentration
  treadmillingSupportedClosed : F.treadmillingSupported

def FilamentPolymerizationClosed (F : FilamentPolymerizationPackage) : Prop :=
  F.monomerConcentration ∧ F.nucleationRate ∧ F.elongationRate ∧ F.criticalConcentration ∧ F.treadmillingSupported

theorem filament_polymerization_closed_from_evidence (F : FilamentPolymerizationPackage) (E : FilamentPolymerizationEvidence F) :
    FilamentPolymerizationClosed F := by
  exact And.intro E.monomerConcentrationClosed
    (And.intro E.nucleationRateClosed
      (And.intro E.elongationRateClosed
        (And.intro E.criticalConcentrationClosed E.treadmillingSupportedClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse