import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MagneticPackage where
  magnetization : Type u
  magneticField : Type v
  anisotropy : Prop
  exchangeInteraction : Prop
  demagnetizationField : Prop

structure MagneticEvidence (M : MagneticPackage) where
  magnetizationClosed : M.magnetization
  magneticFieldClosed : M.magneticField
  anisotropyClosed : M.anisotropy
  exchangeInteractionClosed : M.exchangeInteraction
  demagnetizationFieldClosed : M.demagnetizationField

def MagneticPackageClosed (M : MagneticPackage) : Prop :=
  M.magnetization ∧ M.magneticField ∧ M.anisotropy ∧ M.exchangeInteraction ∧ M.demagnetizationField

theorem magnetic_package_closed_from_evidence (M : MagneticPackage) (E : MagneticEvidence M) :
    MagneticPackageClosed M := by
  exact And.intro E.magnetizationClosed
    (And.intro E.magneticFieldClosed
      (And.intro E.anisotropyClosed
        (And.intro E.exchangeInteractionClosed E.demagnetizationFieldClosed)))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
