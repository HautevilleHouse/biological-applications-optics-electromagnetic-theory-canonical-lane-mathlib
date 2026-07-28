import BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.DiffusionApproximationPackage

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticalCoherenceTomographyPackage (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (D : DiffusionApproximationPackage A L) where
  lowCoherenceInterferometry : Prop
  axialResolution : Float
  penetrationDepth : Float
  imagingSpeed : Float
  contrastMechanism : String
  resolutionAchieved : axialResolution > 0
  depthAchieved : penetrationDepth > 0

structure OpticalCoherenceTomographyEvidence (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (D : DiffusionApproximationPackage A L) (O : OpticalCoherenceTomographyPackage A L D) where
  lowCoherenceInterferometryClosed : O.lowCoherenceInterferometry
  resolutionAchievedClosed : O.resolutionAchieved
  depthAchievedClosed : O.depthAchieved

def OpticalCoherenceTomographyClosed (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (D : DiffusionApproximationPackage A L) (O : OpticalCoherenceTomographyPackage A L D) : Prop :=
  O.lowCoherenceInterferometry ∧ O.resolutionAchieved ∧ O.depthAchieved

theorem optical_coherence_tomography_closed_from_evidence (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (D : DiffusionApproximationPackage A L) (O : OpticalCoherenceTomographyPackage A L D) (E : OpticalCoherenceTomographyEvidence A L D O) :
    OpticalCoherenceTomographyClosed A L D O := by
  exact And.intro E.lowCoherenceInterferometryClosed
    (And.intro E.resolutionAchievedClosed E.depthAchievedClosed)

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse