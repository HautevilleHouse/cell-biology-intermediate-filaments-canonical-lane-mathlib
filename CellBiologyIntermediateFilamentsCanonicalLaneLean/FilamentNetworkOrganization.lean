import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure FilamentNetworkOrganizationPackage where
  bundlingProteins : Prop
  crosslinkingDensity : Prop
  networkArchitecture : Prop
  subcellularLocalization : Prop
  scaffoldFunction : Prop

structure FilamentNetworkOrganizationEvidence (F : FilamentNetworkOrganizationPackage) where
  bundlingProteinsClosed : F.bundlingProteins
  crosslinkingDensityClosed : F.crosslinkingDensity
  networkArchitectureClosed : F.networkArchitecture
  subcellularLocalizationClosed : F.subcellularLocalization
  scaffoldFunctionClosed : F.scaffoldFunction

def FilamentNetworkOrganizationClosed (F : FilamentNetworkOrganizationPackage) : Prop :=
  F.bundlingProteins ∧ F.crosslinkingDensity ∧ F.networkArchitecture ∧ F.subcellularLocalization ∧ F.scaffoldFunction

theorem filament_network_organization_closed_from_evidence
    (F : FilamentNetworkOrganizationPackage) (E : FilamentNetworkOrganizationEvidence F) :
    FilamentNetworkOrganizationClosed F := by
  exact And.intro E.bundlingProteinsClosed
    (And.intro E.crosslinkingDensityClosed
      (And.intro E.networkArchitectureClosed
        (And.intro E.subcellularLocalizationClosed E.scaffoldFunctionClosed)))

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
