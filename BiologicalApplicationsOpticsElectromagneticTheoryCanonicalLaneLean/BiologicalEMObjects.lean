import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure Tissue where
  point : Type
  topology : TopologicalSpace point
  scatteringCoeff : ℝ
  absorptionCoeff : ℝ
  refractiveIndex : ℝ

structure ElectromagneticField where
  E : ℝ → ℝ → ℝ  -- electric field as function of space and time
  H : ℝ → ℝ → ℝ  -- magnetic field

structure BiologicalAdmittedObject where
  tissue : Tissue
  field : ElectromagneticField
  maxwellSatisfied : Prop
  boundaryConditions : Prop
  conclusion : maxwellSatisfied ∧ boundaryConditions

structure BiologicalEndgameState where
  object : BiologicalAdmittedObject

def BiologicalWitnessClosed (O : BiologicalAdmittedObject) : Prop :=
  O.maxwellSatisfied ∧ O.boundaryConditions

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse