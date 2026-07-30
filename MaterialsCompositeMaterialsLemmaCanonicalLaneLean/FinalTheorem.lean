import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

def ConstrainedCompositeMaterialsLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_composite_materials_lemma_endgame (A : AdmissibleClass) :
    ConstrainedCompositeMaterialsLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse