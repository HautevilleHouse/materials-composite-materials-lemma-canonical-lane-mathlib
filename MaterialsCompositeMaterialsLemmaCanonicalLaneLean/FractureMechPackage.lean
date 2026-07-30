import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure FractureMechPackage where
  crackGeometry : Type u
  stressConcentrationFactor : Prop
  energyReleaseRate : Prop
  criticalStressIntensity : Prop
  parisLawApplicable : Prop
  fractureCriterionEstablished : Prop

structure FractureMechEvidence (F : FractureMechPackage) where
  stressConcentrationFactorClosed : F.stressConcentrationFactor
  energyReleaseRateClosed : F.energyReleaseRate
  criticalStressIntensityClosed : F.criticalStressIntensity
  parisLawApplicableClosed : F.parisLawApplicable
  fractureCriterionEstablishedClosed : F.fractureCriterionEstablished

def FractureMechClosed (F : FractureMechPackage) : Prop :=
  F.stressConcentrationFactor ∧ F.energyReleaseRate ∧
  F.criticalStressIntensity ∧ F.parisLawApplicable ∧
  F.fractureCriterionEstablished

theorem fracture_mech_closed_from_evidence (F : FractureMechPackage)
    (Ev : FractureMechEvidence F) : FractureMechClosed F := by
  exact And.intro Ev.stressConcentrationFactorClosed
    (And.intro Ev.energyReleaseRateClosed
      (And.intro Ev.criticalStressIntensityClosed
        (And.intro Ev.parisLawApplicableClosed
          Ev.fractureCriterionEstablishedClosed)))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse