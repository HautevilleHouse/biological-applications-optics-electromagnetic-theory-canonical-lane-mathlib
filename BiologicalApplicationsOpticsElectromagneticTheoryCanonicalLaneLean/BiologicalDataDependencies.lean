import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.BiologicalDataSource

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure BiologicalDataDependency where
  sourceKey : String
  dependentKey : String
  relation : String
  consistent : Prop

structure BiologicalDataDependencyEvidence (D : BiologicalDataDependency) where
  consistentClosed : D.consistent

def BiologicalDataDependencyClosed (D : BiologicalDataDependency) : Prop :=
  D.consistent

theorem biological_data_dependency_closed_from_evidence (D : BiologicalDataDependency) (E : BiologicalDataDependencyEvidence D) :
    BiologicalDataDependencyClosed D := by
  exact E.consistentClosed

def allDependenciesClosed (deps : List BiologicalDataDependency) : Prop :=
  ∀ d ∈ deps, BiologicalDataDependencyClosed d

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse