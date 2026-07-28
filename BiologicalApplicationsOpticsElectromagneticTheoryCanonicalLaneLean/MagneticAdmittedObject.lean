import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MagnetizationDynamics where
  larmorPrecession : Prop
  dampingTerm : Prop
  effectiveField : Prop

structure LandauLifshitzParameters where
  gyromagneticRatio : ℝ
  dampingConstant : ℝ
  anisotropyConstant : ℝ
  exchangeConstant : ℝ
  demagnetizationTensor : ℝ × ℝ × ℝ

structure LandauLifshitzEquation (params : LandauLifshitzParameters) where
  dynamics : MagnetizationDynamics
  consistency : dynamics.larmorPrecession ∧ dynamics.dampingTerm ∧ dynamics.effectiveField
  solution : Prop

structure MagneticAdmittedObject where
  parameters : LandauLifshitzParameters
  equation : LandauLifshitzEquation parameters
  solutionObtained : equation.solution
  conclusion : solutionObtained

structure MagneticEndgameState where
  object : MagneticAdmittedObject

def MagneticWitnessClosed (O : MagneticAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : MagneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MagneticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse