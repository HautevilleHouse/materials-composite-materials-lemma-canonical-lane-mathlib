import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure ThermalMechPackage where
  thermalConductivityTensor : Type u
  heatEquation : Prop
  thermalExpansionCoefficients : Prop
  thermalStressComputed : Prop
  thermoelasticCouplingVerified : Prop

structure ThermalMechEvidence (T : ThermalMechPackage) where
  heatEquationClosed : T.heatEquation
  thermalExpansionCoefficientsClosed : T.thermalExpansionCoefficients
  thermalStressComputedClosed : T.thermalStressComputed
  thermoelasticCouplingVerifiedClosed : T.thermoelasticCouplingVerified

def ThermalMechClosed (T : ThermalMechPackage) : Prop :=
  T.heatEquation ∧ T.thermalExpansionCoefficients ∧
  T.thermalStressComputed ∧ T.thermoelasticCouplingVerified

theorem thermal_mech_closed_from_evidence (T : ThermalMechPackage)
    (E : ThermalMechEvidence T) : ThermalMechClosed T := by
  exact And.intro E.heatEquationClosed
    (And.intro E.thermalExpansionCoefficientsClosed
      (And.intro E.thermalStressComputedClosed
        E.thermoelasticCouplingVerifiedClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse