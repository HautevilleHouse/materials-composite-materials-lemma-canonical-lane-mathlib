import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  hookesLawFormulation : Prop
  positiveDefiniteness : Prop
  symmetryConditions : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  hookesLawFormulationClosed : E.hookesLawFormulation
  positiveDefinitenessClosed : E.positiveDefiniteness
  symmetryConditionsClosed : E.symmetryConditions

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.hookesLawFormulation ∧ E.positiveDefiniteness ∧ E.symmetryConditions

theorem elasticity_tensor_closed_from_evidence
    (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.hookesLawFormulationClosed
    (And.intro Ev.positiveDefinitenessClosed Ev.symmetryConditionsClosed)

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
