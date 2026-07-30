import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  hookesLawIsotropic : Prop
  elasticModuliDefined : Prop
  equilibriumEquations : Prop
  boundaryValueProblemWellPosed : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawIsotropicClosed : E.hookesLawIsotropic
  elasticModuliDefinedClosed : E.elasticModuliDefined
  equilibriumEquationsClosed : E.equilibriumEquations
  boundaryValueProblemWellPosedClosed : E.boundaryValueProblemWellPosed

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLawIsotropic ∧ E.elasticModuliDefined ∧
  E.equilibriumEquations ∧ E.boundaryValueProblemWellPosed

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawIsotropicClosed
    (And.intro Ev.elasticModuliDefinedClosed
      (And.intro Ev.equilibriumEquationsClosed
        Ev.boundaryValueProblemWellPosedClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse