import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemma

structure CrystallographyPackage where
  latticeSymmetries : Prop
  bravaisLatticeClassified : Prop
  spaceGroupDetermined : Prop
  xrayDiffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeSymmetriesClosed : C.latticeSymmetries
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  spaceGroupDeterminedClosed : C.spaceGroupDetermined
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeSymmetries ∧ C.bravaisLatticeClassified ∧
  C.spaceGroupDetermined ∧ C.xrayDiffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeSymmetriesClosed
    (And.intro E.bravaisLatticeClassifiedClosed
      (And.intro E.spaceGroupDeterminedClosed E.xrayDiffractionPatternClosed))

end MaterialsCompositeMaterialsLemma
end HautevilleHouse