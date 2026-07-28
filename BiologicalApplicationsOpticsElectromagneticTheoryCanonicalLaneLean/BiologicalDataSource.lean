import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure BiologicalDataSourcePackage where
  measurementType : String
  sourceFile : String
  sha256 : String
  acquisitionDate : String
  calibrationValid : Prop
  noiseModel : Prop
  dataCompleteness : Prop

structure BiologicalDataSourceEvidence (D : BiologicalDataSourcePackage) where
  calibrationValidClosed : D.calibrationValid
  noiseModelClosed : D.noiseModel
  dataCompletenessClosed : D.dataCompleteness

def BiologicalDataSourceClosed (D : BiologicalDataSourcePackage) : Prop :=
  D.calibrationValid ∧ D.noiseModel ∧ D.dataCompleteness

theorem biological_data_source_closed_from_evidence (D : BiologicalDataSourcePackage) (E : BiologicalDataSourceEvidence D) :
    BiologicalDataSourceClosed D := by
  exact And.intro E.calibrationValidClosed (And.intro E.noiseModelClosed E.dataCompletenessClosed)

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse