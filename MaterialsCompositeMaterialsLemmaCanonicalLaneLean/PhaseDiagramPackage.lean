import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Nat
  phaseRegions : Type u
  phaseBoundaries : Type v
  gibbsFreeEnergyMinimized : Prop
  leverRuleApplied : Prop
  phaseTransitionsCharacterized : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  gibbsFreeEnergyMinimizedClosed : P.gibbsFreeEnergyMinimized
  leverRuleAppliedClosed : P.leverRuleApplied
  phaseTransitionsCharacterizedClosed : P.phaseTransitionsCharacterized

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.gibbsFreeEnergyMinimized ∧ P.leverRuleApplied ∧
  P.phaseTransitionsCharacterized

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.gibbsFreeEnergyMinimizedClosed
    (And.intro E.leverRuleAppliedClosed
      E.phaseTransitionsCharacterizedClosed)

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse