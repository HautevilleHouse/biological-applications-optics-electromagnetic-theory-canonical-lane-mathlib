import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.MaxwellFieldPropagation

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticSingularityPackage {M : BioOpticalMediumPackage} {P : MaxwellFieldPropagationPackage M} where
  causticPoints : Prop
  resonanceFrequencies : Prop
  blowupField : Prop
  singularityTypeClassification : Prop
  physicalRegularization : Prop

structure ElectromagneticSingularityEvidence {M : BioOpticalMediumPackage} {P : MaxwellFieldPropagationPackage M} (S : ElectromagneticSingularityPackage M P) where
  causticPointsClosed : S.causticPoints
  resonanceFrequenciesClosed : S.resonanceFrequencies
  blowupFieldClosed : S.blowupField
  singularityTypeClassificationClosed : S.singularityTypeClassification
  physicalRegularizationClosed : S.physicalRegularization

def ElectromagneticSingularityClosed {M : BioOpticalMediumPackage} {P : MaxwellFieldPropagationPackage M} (S : ElectromagneticSingularityPackage M P) : Prop :=
  S.causticPoints ∧ S.resonanceFrequencies ∧ S.blowupField ∧ S.singularityTypeClassification ∧ S.physicalRegularization

theorem electromagnetic_singularity_closed_from_evidence {M : BioOpticalMediumPackage} {P : MaxwellFieldPropagationPackage M} (S : ElectromagneticSingularityPackage M P) (E : ElectromagneticSingularityEvidence S) :
    ElectromagneticSingularityClosed S := by
  exact And.intro E.causticPointsClosed (And.intro E.resonanceFrequenciesClosed (And.intro E.blowupFieldClosed (And.intro E.singularityTypeClassificationClosed E.physicalRegularizationClosed)))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse