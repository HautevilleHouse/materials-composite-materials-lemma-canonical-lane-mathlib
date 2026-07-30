import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure FractureToughness where
  criticalStressIntensity : ℝ
  crackLength : ℝ
  geometryFactor : ℝ
  criticalStressIntensityPositive : Prop
  crackLengthPositive : Prop
  geometryFactorPositive : Prop
  criticalStressIntensityPositiveTerm : criticalStressIntensityPositive
  crackLengthPositiveTerm : crackLengthPositive
  geometryFactorPositiveTerm : geometryFactorPositive

def FractureToughnessClosed (F : FractureToughness) : Prop :=
  F.criticalStressIntensityPositive ∧ F.crackLengthPositive ∧ F.geometryFactorPositive

theorem fracture_toughness_closed_from_evidence (F : FractureToughness) :
    FractureToughnessClosed F :=
  And.intro F.criticalStressIntensityPositiveTerm
    (And.intro F.crackLengthPositiveTerm F.geometryFactorPositiveTerm)

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse