import HautevilleHouse.BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.MagneticAdmittedObject

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MagneticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse