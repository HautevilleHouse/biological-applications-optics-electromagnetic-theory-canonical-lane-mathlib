import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticBiologicalCouplingPackage where
  fieldTissueInteraction : Prop
  specificAbsorptionRate : Prop
  thermalResponse : Prop
  membranePotentialEffect : Prop

structure ElectromagneticBiologicalCouplingEvidence (E : ElectromagneticBiologicalCouplingPackage) where
  fieldTissueInteractionClosed : E.fieldTissueInteraction
  specificAbsorptionRateClosed : E.specificAbsorptionRate
  thermalResponseClosed : E.thermalResponse
  membranePotentialEffectClosed : E.membranePotentialEffect

def ElectromagneticBiologicalCouplingClosed (E : ElectromagneticBiologicalCouplingPackage) : Prop :=
  E.fieldTissueInteraction ∧ E.specificAbsorptionRate ∧ E.thermalResponse ∧ E.membranePotentialEffect

theorem electromagnetic_biological_coupling_closed_from_evidence (E : ElectromagneticBiologicalCouplingPackage) (Ev : ElectromagneticBiologicalCouplingEvidence E) : ElectromagneticBiologicalCouplingClosed E :=
  And.intro Ev.fieldTissueInteractionClosed (And.intro Ev.specificAbsorptionRateClosed (And.intro Ev.thermalResponseClosed Ev.membranePotentialEffectClosed))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
