import BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.MaxwellPDE

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure TissueOpticsPackage {T : Tissue} (M : MaxwellPDEPackage T) where
  absorptionSpectrum : ℝ → ℝ
  scatteringPhaseFunction : ℝ → ℝ → ℝ
  refractiveIndexDispersion : ℝ → ℝ
  penetrationDepth : Prop
  opticalCoherenceLength : Prop
  coherenceGating : Prop

structure TissueOpticsEvidence {T : Tissue} {M : MaxwellPDEPackage T}
    (O : TissueOpticsPackage M) where
  penetrationDepthClosed : O.penetrationDepth
  opticalCoherenceLengthClosed : O.opticalCoherenceLength
  coherenceGatingClosed : O.coherenceGating

def TissueOpticsClosed {T : Tissue} {M : MaxwellPDEPackage T}
    (O : TissueOpticsPackage M) : Prop :=
  O.penetrationDepth ∧ O.opticalCoherenceLength ∧ O.coherenceGating

theorem tissue_optics_closed_from_evidence
    {T : Tissue} {M : MaxwellPDEPackage T}
    (O : TissueOpticsPackage M) (E : TissueOpticsEvidence O) :
    TissueOpticsClosed O := by
  exact And.intro E.penetrationDepthClosed
    (And.intro E.opticalCoherenceLengthClosed E.coherenceGatingClosed)

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse