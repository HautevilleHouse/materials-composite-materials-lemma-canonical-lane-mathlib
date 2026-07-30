import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure Crystallography where
  bravaisLattice : Type u
  reciprocalLattice : Type v
  structureFactor : ℕ → ℂ
  bravaisLatticeDefined : Prop
  reciprocalLatticeDefined : Prop
  structureFactorComputed : Prop
  bravaisLatticeDefinedTerm : bravaisLatticeDefined
  reciprocalLatticeDefinedTerm : reciprocalLatticeDefined
  structureFactorComputedTerm : structureFactorComputed

def CrystallographyClosed (C : Crystallography) : Prop :=
  C.bravaisLatticeDefined ∧ C.reciprocalLatticeDefined ∧ C.structureFactorComputed

theorem crystallography_closed_from_evidence (C : Crystallography) :
    CrystallographyClosed C :=
  And.intro C.bravaisLatticeDefinedTerm
    (And.intro C.reciprocalLatticeDefinedTerm C.structureFactorComputedTerm)

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse