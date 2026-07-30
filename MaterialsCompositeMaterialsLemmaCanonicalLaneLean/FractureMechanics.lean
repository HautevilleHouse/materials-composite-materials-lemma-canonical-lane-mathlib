import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackPropagationCriterion : Prop
  energyReleaseRate : Type v
  fractureToughnessBound : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  fractureToughnessBoundClosed : F.fractureToughnessBound

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.fractureToughnessBound

theorem fracture_mechanics_closed_from_evidence
    (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationCriterionClosed E.fractureToughnessBoundClosed

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
