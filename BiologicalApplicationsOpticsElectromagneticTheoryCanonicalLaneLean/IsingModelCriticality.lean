import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure IsingModelCriticalityPackage where
  criticalTemperature : Prop
  spontaneousMagnetization : Prop
  correlationLength : Prop
  scalingLaws : Prop

structure IsingModelCriticalityEvidence (I : IsingModelCriticalityPackage) where
  criticalTemperatureClosed : I.criticalTemperature
  spontaneousMagnetizationClosed : I.spontaneousMagnetization
  correlationLengthClosed : I.correlationLength
  scalingLawsClosed : I.scalingLaws

def IsingModelCriticalityClosed (I : IsingModelCriticalityPackage) : Prop :=
  I.criticalTemperature ∧ I.spontaneousMagnetization ∧ I.correlationLength ∧ I.scalingLaws

theorem ising_model_criticality_closed_from_evidence (I : IsingModelCriticalityPackage) (E : IsingModelCriticalityEvidence I) : IsingModelCriticalityClosed I :=
  And.intro E.criticalTemperatureClosed (And.intro E.spontaneousMagnetizationClosed (And.intro E.correlationLengthClosed E.scalingLawsClosed))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
