import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemma

structure ElasticityTensorPackage where
  stressStrainLinear : Prop
  stiffnessTensorDefined : Prop
  complianceTensorDefined : Prop
  isotropyCondition : Prop
  homogenizationApplied : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  stressStrainLinearClosed : E.stressStrainLinear
  stiffnessTensorDefinedClosed : E.stiffnessTensorDefined
  complianceTensorDefinedClosed : E.complianceTensorDefined
  isotropyConditionClosed : E.isotropyCondition
  homogenizationAppliedClosed : E.homogenizationApplied

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.stressStrainLinear ∧ E.stiffnessTensorDefined ∧
  E.complianceTensorDefined ∧ E.isotropyCondition ∧ E.homogenizationApplied

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.stressStrainLinearClosed
    (And.intro Ev.stiffnessTensorDefinedClosed
      (And.intro Ev.complianceTensorDefinedClosed
        (And.intro Ev.isotropyConditionClosed Ev.homogenizationAppliedClosed)))

end MaterialsCompositeMaterialsLemma
end HautevilleHouse