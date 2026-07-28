import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticalBiologicalInterfacePackage where
  refractiveIndexMismatch : Prop
  scatteringCoefficient : Prop
  absorptionLength : Prop
  lightPropagationModel : Prop

structure OpticalBiologicalInterfaceEvidence (O : OpticalBiologicalInterfacePackage) where
  refractiveIndexMismatchClosed : O.refractiveIndexMismatch
  scatteringCoefficientClosed : O.scatteringCoefficient
  absorptionLengthClosed : O.absorptionLength
  lightPropagationModelClosed : O.lightPropagationModel

def OpticalBiologicalInterfaceClosed (O : OpticalBiologicalInterfacePackage) : Prop :=
  O.refractiveIndexMismatch ∧ O.scatteringCoefficient ∧ O.absorptionLength ∧ O.lightPropagationModel

theorem optical_biological_interface_closed_from_evidence (O : OpticalBiologicalInterfacePackage) (E : OpticalBiologicalInterfaceEvidence O) : OpticalBiologicalInterfaceClosed O :=
  And.intro E.refractiveIndexMismatchClosed (And.intro E.scatteringCoefficientClosed (And.intro E.absorptionLengthClosed E.lightPropagationModelClosed))

end BiologicalApplicationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
