import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemma

structure CompositeMixingRulePackage where
  volumeFractionDefined : Prop
  ruleOfMixturesApplied : Prop
  inverseRuleOfMixturesApplied : Prop
  halpinTsaiEquationApplied : Prop
  effectivePropertyComputed : Prop

structure CompositeMixingRuleEvidence (C : CompositeMixingRulePackage) where
  volumeFractionDefinedClosed : C.volumeFractionDefined
  ruleOfMixturesAppliedClosed : C.ruleOfMixturesApplied
  inverseRuleOfMixturesAppliedClosed : C.inverseRuleOfMixturesApplied
  halpinTsaiEquationAppliedClosed : C.halpinTsaiEquationApplied
  effectivePropertyComputedClosed : C.effectivePropertyComputed

def CompositeMixingRuleClosed (C : CompositeMixingRulePackage) : Prop :=
  C.volumeFractionDefined ∧ C.ruleOfMixturesApplied ∧
  C.inverseRuleOfMixturesApplied ∧ C.halpinTsaiEquationApplied ∧
  C.effectivePropertyComputed

theorem composite_mixing_rule_closed_from_evidence (C : CompositeMixingRulePackage)
    (E : CompositeMixingRuleEvidence C) : CompositeMixingRuleClosed C := by
  exact And.intro E.volumeFractionDefinedClosed
    (And.intro E.ruleOfMixturesAppliedClosed
      (And.intro E.inverseRuleOfMixturesAppliedClosed
        (And.intro E.halpinTsaiEquationAppliedClosed E.effectivePropertyComputedClosed)))

end MaterialsCompositeMaterialsLemma
end HautevilleHouse