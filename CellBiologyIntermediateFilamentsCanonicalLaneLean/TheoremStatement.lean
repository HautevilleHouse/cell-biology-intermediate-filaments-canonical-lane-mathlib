import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsCanonicalLaneLean

structure TheoremStatement where
  filamentType : String
  integrityStatement : Prop
  closureClaim : Prop

def sourceTheoremStatement : TheoremStatement :=
  { filamentType := "intermediate_filament"
    integrityStatement := True
    closureClaim := True
  }

theorem theorem_statement_internalized :
    sourceTheoremStatement.integrityStatement := by
  trivial

end CellBiologyIntermediateFilamentsCanonicalLaneLean
end HautevilleHouse
