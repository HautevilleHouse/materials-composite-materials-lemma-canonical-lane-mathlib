import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemma

structure FractureMechanicsPackage where
  crackTipStressField : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop
  griffithCriterion : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackTipStressFieldClosed : F.crackTipStressField
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  griffithCriterionClosed : F.griffithCriterion

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackTipStressField ∧ F.stressIntensityFactor ∧
  F.fractureToughness ∧ F.griffithCriterion

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.crackTipStressFieldClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.fractureToughnessClosed E.griffithCriterionClosed))

end MaterialsCompositeMaterialsLemma
end HautevilleHouse