import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure CrystallographyBasisPackage where
  bravaisLattice : Type u
  unitCellDimensions : Type v
  symmetryGroup : Type w
  latticeParametersAdmissible : Prop
  bravaisClassification : Prop

structure CrystallographyBasisEvidence (C : CrystallographyBasisPackage) where
  latticeParametersAdmissibleClosed : C.latticeParametersAdmissible
  bravaisClassificationClosed : C.bravaisClassification

def CrystallographyBasisClosed (C : CrystallographyBasisPackage) : Prop :=
  C.latticeParametersAdmissible ∧ C.bravaisClassification

theorem crystallography_basis_closed_from_evidence
    (C : CrystallographyBasisPackage) (E : CrystallographyBasisEvidence C) :
    CrystallographyBasisClosed C := by
  exact And.intro E.latticeParametersAdmissibleClosed E.bravaisClassificationClosed

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
