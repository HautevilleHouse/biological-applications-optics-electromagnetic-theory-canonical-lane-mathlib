import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MagneticDomainsPackage where
  domainWallEnergy : Prop
  magnetizationOrientation : Prop
  hysteresisCurve : Prop
  exchangeInteraction : Prop

structure MagneticDomainsEvidence (M : MagneticDomainsPackage) where
  domainWallEnergyClosed : M.domainWallEnergy
  magnetizationOrientationClosed : M.magnetizationOrientation
  hysteresisCurveClosed : M.hysteresisCurve
  exchangeInteractionClosed : M.exchangeInteraction

def MagneticDomainsClosed (M : MagneticDomainsPackage) : Prop :=
  M.domainWallEnergy ∧ M.magnetizationOrientation ∧ M.hysteresisCurve ∧ M.exchangeInteraction

theorem magnetic_domains_closed_from_evidence (M : MagneticDomainsPackage) (E : MagneticDomainsEvidence M) : MagneticDomainsClosed M :=
  And.intro E.domainWallEnergyClosed (And.intro E.magnetizationOrientationClosed (And.intro E.hysteresisCurveClosed E.exchangeInteractionClosed))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
