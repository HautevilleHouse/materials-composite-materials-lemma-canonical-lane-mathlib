import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramStabilityPackage where
  phaseBoundary : Type u
  gibbsFreeEnergy : Type v
  equilibriumCondition : Prop
  stabilityRegionDefined : Prop
  leverRuleFormulated : Prop

structure PhaseDiagramStabilityEvidence (P : PhaseDiagramStabilityPackage) where
  equilibriumConditionClosed : P.equilibriumCondition
  stabilityRegionDefinedClosed : P.stabilityRegionDefined
  leverRuleFormulatedClosed : P.leverRuleFormulated

def PhaseDiagramStabilityClosed (P : PhaseDiagramStabilityPackage) : Prop :=
  P.equilibriumCondition ∧ P.stabilityRegionDefined ∧ P.leverRuleFormulated

theorem phase_diagram_stability_closed_from_evidence
    (P : PhaseDiagramStabilityPackage) (E : PhaseDiagramStabilityEvidence P) :
    PhaseDiagramStabilityClosed P := by
  exact And.intro E.equilibriumConditionClosed
    (And.intro E.stabilityRegionDefinedClosed E.leverRuleFormulatedClosed)

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
