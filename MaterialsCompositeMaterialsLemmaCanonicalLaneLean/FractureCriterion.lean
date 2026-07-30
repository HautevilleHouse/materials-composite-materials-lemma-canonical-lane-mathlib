import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure FracturePackage where
  criticalStressIntensity : Prop
  energyReleaseRate : Prop
  giffithCriterion : Prop
  mixedModeInteraction : Prop
  criticalStressIntensityTerm : criticalStressIntensity
  energyReleaseRateTerm : energyReleaseRate
  giffithCriterionTerm : giffithCriterion
  mixedModeInteractionTerm : mixedModeInteraction

structure FractureEvidence (F : FracturePackage) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  energyReleaseRateClosed : F.energyReleaseRate
  giffithCriterionClosed : F.giffithCriterion
  mixedModeInteractionClosed : F.mixedModeInteraction

def FractureClosed (F : FracturePackage) : Prop :=
  F.criticalStressIntensity ∧ F.energyReleaseRate ∧
  F.giffithCriterion ∧ F.mixedModeInteraction

theorem fracture_closed_from_evidence (F : FracturePackage)
    (ev : FractureEvidence F) : FractureClosed F := by
  exact And.intro ev.criticalStressIntensityClosed
    (And.intro ev.energyReleaseRateClosed
      (And.intro ev.giffithCriterionClosed ev.mixedModeInteractionClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse