import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure PostTranslationalModificationsPackage where
  phosphorylationSites : Prop
  acetylationSites : Prop
  glycosylationSites : Prop
  sumoylationSites : Prop
  modificationCrosstalk : Prop

structure PostTranslationalModificationsEvidence (P : PostTranslationalModificationsPackage) where
  phosphorylationSitesClosed : P.phosphorylationSites
  acetylationSitesClosed : P.acetylationSites
  glycosylationSitesClosed : P.glycosylationSites
  sumoylationSitesClosed : P.sumoylationSites
  modificationCrosstalkClosed : P.modificationCrosstalk

def PostTranslationalModificationsClosed (P : PostTranslationalModificationsPackage) : Prop :=
  P.phosphorylationSites ∧ P.acetylationSites ∧ P.glycosylationSites ∧ P.sumoylationSites ∧ P.modificationCrosstalk

theorem post_translational_modifications_closed_from_evidence
    (P : PostTranslationalModificationsPackage) (E : PostTranslationalModificationsEvidence P) :
    PostTranslationalModificationsClosed P := by
  exact And.intro E.phosphorylationSitesClosed
    (And.intro E.acetylationSitesClosed
      (And.intro E.glycosylationSitesClosed
        (And.intro E.sumoylationSitesClosed E.modificationCrosstalkClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
