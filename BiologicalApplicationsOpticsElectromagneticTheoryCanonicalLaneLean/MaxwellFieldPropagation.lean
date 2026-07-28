import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.BioOpticalMedium

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellFieldPropagationPackage {M : BioOpticalMediumPackage} where
  electricField : Type
  magneticField : Type
  maxwellEquations : Prop
  constitutiveRelations : Prop
  boundaryConditions : Prop
  initialConditions : Prop
  uniqueSolution : Prop

structure MaxwellFieldPropagationEvidence {M : BioOpticalMediumPackage} (P : MaxwellFieldPropagationPackage M) where
  maxwellEquationsClosed : P.maxwellEquations
  constitutiveRelationsClosed : P.constitutiveRelations
  boundaryConditionsClosed : P.boundaryConditions
  initialConditionsClosed : P.initialConditions
  uniqueSolutionClosed : P.uniqueSolution

def MaxwellFieldPropagationClosed {M : BioOpticalMediumPackage} (P : MaxwellFieldPropagationPackage M) : Prop :=
  P.maxwellEquations ∧ P.constitutiveRelations ∧ P.boundaryConditions ∧ P.initialConditions ∧ P.uniqueSolution

theorem maxwell_field_propagation_closed_from_evidence {M : BioOpticalMediumPackage} (P : MaxwellFieldPropagationPackage M) (E : MaxwellFieldPropagationEvidence P) :
    MaxwellFieldPropagationClosed P := by
  exact And.intro E.maxwellEquationsClosed (And.intro E.constitutiveRelationsClosed (And.intro E.boundaryConditionsClosed (And.intro E.initialConditionsClosed E.uniqueSolutionClosed)))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse