import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  complianceTensor : Type w
  stiffnessTensor : Type x
  isotropicHomogeneous : Prop
  anisotropicLaminates : Prop
  isotropicHomogeneousTerm : isotropicHomogeneous
  anisotropicLaminatesTerm : anisotropicLaminates

structure ElasticityEvidence (E : ElasticityPackage) where
  isotropicHomogeneousClosed : E.isotropicHomogeneous
  anisotropicLaminatesClosed : E.anisotropicLaminates

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.isotropicHomogeneous ∧ E.anisotropicLaminates

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro ev.isotropicHomogeneousClosed ev.anisotropicLaminatesClosed

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse