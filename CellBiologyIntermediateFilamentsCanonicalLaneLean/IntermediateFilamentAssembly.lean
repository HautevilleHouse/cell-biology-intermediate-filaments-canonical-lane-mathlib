import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure FilamentSubunit where
  monomerType : Type
  polymerizationDomain : Type
  coassemblyRule : Prop
  subunitCarrier : Prop

structure AssemblyNucleation where
  criticalConcentration : Float
  nucleationRate : Float
  elongationRate : Float
  nucleationPathwayChosen : Prop
  rateLawsClosed : Prop

structure CrosslinkerNetwork where
  crosslinkerProtein : Type
  bundlingFactor : Float
  meshSize : Float
  crosslinkDensity : Float
  networkMorphologyClassified : Prop
  mechanicalCouplingDerived : Prop

structure AdmittedFilamentClass where
  assemblyNucleation : AssemblyNucleation
  crosslinkerNetwork : CrosslinkerNetwork
  filamentTypeAdmitted : Prop
  assemblyFromSubunits : FilamentSubunit
  conclusion : filamentTypeAdmitted

structure AdmissibleFilamentEndgameState where
  object : AdmittedFilamentClass

def FilamentWitnessClosed (O : AdmittedFilamentClass) : Prop :=
  O.filamentTypeAdmitted

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse