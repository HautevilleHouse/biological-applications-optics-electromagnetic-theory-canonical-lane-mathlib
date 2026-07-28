import BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure LightScatteringTransportPackage (A : AdmissibleClass) where
  radiativeTransferEquation : Prop
  phaseFunction : String
  boundaryCondition : Prop
  solutionExists : Prop
  uniqueSolution : Prop

structure LightScatteringTransportEvidence (A : AdmissibleClass) (L : LightScatteringTransportPackage A) where
  radiativeTransferEquationClosed : L.radiativeTransferEquation
  boundaryConditionClosed : L.boundaryCondition
  solutionExistsClosed : L.solutionExists
  uniqueSolutionClosed : L.uniqueSolution

def LightScatteringTransportClosed (A : AdmissibleClass) (L : LightScatteringTransportPackage A) : Prop :=
  L.radiativeTransferEquation ∧ L.boundaryCondition ∧ L.solutionExists ∧ L.uniqueSolution

theorem light_scattering_transport_closed_from_evidence (A : AdmissibleClass) (L : LightScatteringTransportPackage A) (E : LightScatteringTransportEvidence A L) :
    LightScatteringTransportClosed A L := by
  exact And.intro E.radiativeTransferEquationClosed
    (And.intro E.boundaryConditionClosed
      (And.intro E.solutionExistsClosed E.uniqueSolutionClosed))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse