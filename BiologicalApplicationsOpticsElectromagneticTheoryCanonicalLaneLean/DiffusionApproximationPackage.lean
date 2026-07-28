import BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.LightScatteringTransportPackage

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure DiffusionApproximationPackage (A : AdmissibleClass) (L : LightScatteringTransportPackage A) where
  diffusionEquation : Prop
  diffusionCoefficient : Float
  reducedScatteringCoefficient : Float
  validityCondition : Prop
  solutionDiffusion : Prop

structure DiffusionApproximationEvidence (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (D : DiffusionApproximationPackage A L) where
  diffusionEquationClosed : D.diffusionEquation
  validityConditionClosed : D.validityCondition
  solutionDiffusionClosed : D.solutionDiffusion

def DiffusionApproximationClosed (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (D : DiffusionApproximationPackage A L) : Prop :=
  D.diffusionEquation ∧ D.validityCondition ∧ D.solutionDiffusion

theorem diffusion_approximation_closed_from_evidence (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (D : DiffusionApproximationPackage A L) (E : DiffusionApproximationEvidence A L D) :
    DiffusionApproximationClosed A L D := by
  exact And.intro E.diffusionEquationClosed
    (And.intro E.validityConditionClosed E.solutionDiffusionClosed)

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse