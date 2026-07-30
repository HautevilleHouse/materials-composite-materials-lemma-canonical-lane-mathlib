import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure ElasticityHomogenizationPackage where
  periodicMicrostructure : Prop
  representativeVolumeElement : Prop
  stressStrainLocalization : Prop
  macroscaleConstitutiveLaw : Prop

structure ElasticityHomogenizationEvidence (E : ElasticityHomogenizationPackage) where
  periodicMicrostructureClosed : E.periodicMicrostructure
  representativeVolumeElementClosed : E.representativeVolumeElement
  stressStrainLocalizationClosed : E.stressStrainLocalization
  macroscaleConstitutiveLawClosed : E.macroscaleConstitutiveLaw

def ElasticityHomogenizationClosed (E : ElasticityHomogenizationPackage) : Prop :=
  E.periodicMicrostructure ∧ E.representativeVolumeElement ∧
  E.stressStrainLocalization ∧ E.macroscaleConstitutiveLaw

theorem elasticity_homogenization_closed_from_evidence
    (E : ElasticityHomogenizationPackage) (Ev : ElasticityHomogenizationEvidence E) :
    ElasticityHomogenizationClosed E := by
  exact And.intro Ev.periodicMicrostructureClosed
    (And.intro Ev.representativeVolumeElementClosed
      (And.intro Ev.stressStrainLocalizationClosed Ev.macroscaleConstitutiveLawClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse