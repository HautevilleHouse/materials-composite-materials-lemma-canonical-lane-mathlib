import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure CompositeStrength where
  fiberStrength : ℝ
  matrixStrength : ℝ
  volumeFraction : ℝ
  ruleOfMixtures : ℝ
  fiberStrengthPositive : Prop
  matrixStrengthPositive : Prop
  volumeFractionInUnitInterval : Prop
  ruleOfMixturesComputed : Prop
  fiberStrengthPositiveTerm : fiberStrengthPositive
  matrixStrengthPositiveTerm : matrixStrengthPositive
  volumeFractionInUnitIntervalTerm : volumeFractionInUnitInterval
  ruleOfMixturesComputedTerm : ruleOfMixturesComputed

def CompositeStrengthClosed (S : CompositeStrength) : Prop :=
  S.fiberStrengthPositive ∧ S.matrixStrengthPositive ∧
  S.volumeFractionInUnitInterval ∧ S.ruleOfMixturesComputed

theorem composite_strength_closed_from_evidence (S : CompositeStrength) :
    CompositeStrengthClosed S :=
  And.intro S.fiberStrengthPositiveTerm
    (And.intro S.matrixStrengthPositiveTerm
      (And.intro S.volumeFractionInUnitIntervalTerm S.ruleOfMixturesComputedTerm))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse