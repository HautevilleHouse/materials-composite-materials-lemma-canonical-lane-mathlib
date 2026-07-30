import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemma

structure PhaseDiagramPackage where
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundariesDefined : Prop
  gibbsFreeEnergyMinimized : Prop
  leverRuleApplicable : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesDefinedClosed : P.phaseBoundariesDefined
  gibbsFreeEnergyMinimizedClosed : P.gibbsFreeEnergyMinimized
  leverRuleApplicableClosed : P.leverRuleApplicable

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundariesDefined ∧
  P.gibbsFreeEnergyMinimized ∧ P.leverRuleApplicable

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.pressureRangeClosed
      (And.intro E.phaseBoundariesDefinedClosed
        (And.intro E.gibbsFreeEnergyMinimizedClosed E.leverRuleApplicableClosed)))

end MaterialsCompositeMaterialsLemma
end HautevilleHouse