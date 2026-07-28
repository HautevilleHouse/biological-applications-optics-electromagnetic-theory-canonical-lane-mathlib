import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure BioOpticalMediumPackage where
  medium : Type u
  topology : TopologicalSpace medium
  absorptionCoefficient : Type v
  scatteringCoefficient : Type w
  refractiveIndex : Type x
  anisotropyFactor : Type y
  homogeneous : Prop
  isotropic : Prop
  timeInvariant : Prop
  linearResponse : Prop

structure BioOpticalMediumEvidence (M : BioOpticalMediumPackage) where
  homogeneousClosed : M.homogeneous
  isotropicClosed : M.isotropic
  timeInvariantClosed : M.timeInvariant
  linearResponseClosed : M.linearResponse

def BioOpticalMediumClosed (M : BioOpticalMediumPackage) : Prop :=
  M.homogeneous ∧ M.isotropic ∧ M.timeInvariant ∧ M.linearResponse

theorem bio_optical_medium_closed_from_evidence (M : BioOpticalMediumPackage) (E : BioOpticalMediumEvidence M) :
    BioOpticalMediumClosed M := by
  exact And.intro E.homogeneousClosed (And.intro E.isotropicClosed (And.intro E.timeInvariantClosed E.linearResponseClosed))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse