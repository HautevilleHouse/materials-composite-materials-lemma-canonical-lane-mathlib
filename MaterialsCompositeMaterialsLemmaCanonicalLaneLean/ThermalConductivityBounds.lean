import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure ThermalConductivityBoundsPackage where
  phaseContrast : Prop
  volumeFraction : Prop
  inclusionShapeFactor : Prop
  effectiveConductivityBounds : Prop

structure ThermalConductivityBoundsEvidence (T : ThermalConductivityBoundsPackage) where
  phaseContrastClosed : T.phaseContrast
  volumeFractionClosed : T.volumeFraction
  inclusionShapeFactorClosed : T.inclusionShapeFactor
  effectiveConductivityBoundsClosed : T.effectiveConductivityBounds

def ThermalConductivityBoundsClosed (T : ThermalConductivityBoundsPackage) : Prop :=
  T.phaseContrast ∧ T.volumeFraction ∧ T.inclusionShapeFactor ∧ T.effectiveConductivityBounds

thermal conductivity bounds closed from evidence
theorem thermal_conductivity_bounds_closed_from_evidence
    (T : ThermalConductivityBoundsPackage) (E : ThermalConductivityBoundsEvidence T) :
    ThermalConductivityBoundsClosed T := by
  exact And.intro E.phaseContrastClosed
    (And.intro E.volumeFractionClosed
      (And.intro E.inclusionShapeFactorClosed E.effectiveConductivityBoundsClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse