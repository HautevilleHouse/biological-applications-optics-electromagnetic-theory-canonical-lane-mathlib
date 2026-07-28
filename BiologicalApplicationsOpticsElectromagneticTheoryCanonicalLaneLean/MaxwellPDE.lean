import BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean.BiologicalEMObjects

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellPDEPackage (T : Tissue) where
  timeParameter : Type u
  electricField : timeParameter → T.point → ℝ
  magneticField : timeParameter → T.point → ℝ
  gaussLawElectric : Prop
  gaussLawMagnetic : Prop
  faradayLaw : Prop
  ampereLaw : Prop
  constitutiveRelations : Prop

structure MaxwellPDEEvidence {T : Tissue} (M : MaxwellPDEPackage T) where
  gaussLawElectricClosed : M.gaussLawElectric
  gaussLawMagneticClosed : M.gaussLawMagnetic
  faradayLawClosed : M.faradayLaw
  ampereLawClosed : M.ampereLaw
  constitutiveRelationsClosed : M.constitutiveRelations

def MaxwellPDEClosed {T : Tissue} (M : MaxwellPDEPackage T) : Prop :=
  M.gaussLawElectric ∧ M.gaussLawMagnetic ∧ M.faradayLaw ∧ M.ampereLaw ∧ M.constitutiveRelations

theorem maxwell_pde_closed_from_evidence
    {T : Tissue} (M : MaxwellPDEPackage T) (E : MaxwellPDEEvidence M) :
    MaxwellPDEClosed M := by
  exact And.intro E.gaussLawElectricClosed
    (And.intro E.gaussLawMagneticClosed
      (And.intro E.faradayLawClosed
        (And.intro E.ampereLawClosed E.constitutiveRelationsClosed)))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse