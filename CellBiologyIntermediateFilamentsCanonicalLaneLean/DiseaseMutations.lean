import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure DiseaseMutationPackage where
  keratinopathies : Prop
  neurofilamentDisease : Prop
  desminRelatedCardiomyopathy : Prop
  laminopathies : Prop

structure DiseaseMutationEvidence (P : DiseaseMutationPackage) where
  keratinopathiesClosed : P.keratinopathies
  neurofilamentDiseaseClosed : P.neurofilamentDisease
  desminRelatedCardiomyopathyClosed : P.desminRelatedCardiomyopathy
  laminopathiesClosed : P.laminopathies

def DiseaseMutationClosed (P : DiseaseMutationPackage) : Prop :=
  P.keratinopathies ∧ P.neurofilamentDisease ∧ P.desminRelatedCardiomyopathy ∧ P.laminopathies

theorem disease_mutation_closed_from_evidence
    (P : DiseaseMutationPackage) (E : DiseaseMutationEvidence P) :
    DiseaseMutationClosed P := by
  exact And.intro E.keratinopathiesClosed
    (And.intro E.neurofilamentDiseaseClosed
      (And.intro E.desminRelatedCardiomyopathyClosed E.laminopathiesClosed))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
