import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure SpinWaveSpectraPackage where
  magnonDispersion : Prop
  spinWaveBandgap : Prop
  ferromagneticResonance : Prop
  dampingTerm : Prop

structure SpinWaveSpectraEvidence (S : SpinWaveSpectraPackage) where
  magnonDispersionClosed : S.magnonDispersion
  spinWaveBandgapClosed : S.spinWaveBandgap
  ferromagneticResonanceClosed : S.ferromagneticResonance
  dampingTermClosed : S.dampingTerm

def SpinWaveSpectraClosed (S : SpinWaveSpectraPackage) : Prop :=
  S.magnonDispersion ∧ S.spinWaveBandgap ∧ S.ferromagneticResonance ∧ S.dampingTerm

theorem spin_wave_spectra_closed_from_evidence (S : SpinWaveSpectraPackage) (E : SpinWaveSpectraEvidence S) : SpinWaveSpectraClosed S :=
  And.intro E.magnonDispersionClosed (And.intro E.spinWaveBandgapClosed (And.intro E.ferromagneticResonanceClosed E.dampingTermClosed))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
