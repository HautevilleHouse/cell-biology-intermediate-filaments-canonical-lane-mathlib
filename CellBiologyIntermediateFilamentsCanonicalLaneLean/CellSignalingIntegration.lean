import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure CellSignalingPackage where
  kinasePhosphorylation : Prop
  scaffoldingFunctions : Prop
  transcriptionRegulation : Prop
  stressResponse : Prop

structure CellSignalingEvidence (P : CellSignalingPackage) where
  kinasePhosphorylationClosed : P.kinasePhosphorylation
  scaffoldingFunctionsClosed : P.scaffoldingFunctions
  transcriptionRegulationClosed : P.transcriptionRegulation
  stressResponseClosed : P.stressResponse

def CellSignalingClosed (P : CellSignalingPackage) : Prop :=
  P.kinasePhosphorylation ∧ P.scaffoldingFunctions ∧ P.transcriptionRegulation ∧ P.stressResponse

theorem cell_signaling_closed_from_evidence
    (P : CellSignalingPackage) (E : CellSignalingEvidence P) :
    CellSignalingClosed P := by
  exact And.intro E.kinasePhosphorylationClosed
    (And.intro E.scaffoldingFunctionsClosed
      (And.intro E.transcriptionRegulationClosed E.stressResponseClosed))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
