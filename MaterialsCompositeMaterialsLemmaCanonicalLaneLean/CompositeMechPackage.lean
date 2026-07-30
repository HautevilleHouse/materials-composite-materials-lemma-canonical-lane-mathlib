import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure CompositeMechPackage where
  fiberMatrixInterface : Type u
  ruleOfMixtures : Prop
  halpinTsaiEquations : Prop
  laminationTheoryDeveloped : Prop
  failureCriteriaEstablished : Prop

structure CompositeMechEvidence (C : CompositeMechPackage) where
  ruleOfMixturesClosed : C.ruleOfMixtures
  halpinTsaiEquationsClosed : C.halpinTsaiEquations
  laminationTheoryDevelopedClosed : C.laminationTheoryDeveloped
  failureCriteriaEstablishedClosed : C.failureCriteriaEstablished

def CompositeMechClosed (C : CompositeMechPackage) : Prop :=
  C.ruleOfMixtures ∧ C.halpinTsaiEquations ∧
  C.laminationTheoryDeveloped ∧ C.failureCriteriaEstablished

theorem composite_mech_closed_from_evidence (C : CompositeMechPackage)
    (E : CompositeMechEvidence C) : CompositeMechClosed C := by
  exact And.intro E.ruleOfMixturesClosed
    (And.intro E.halpinTsaiEquationsClosed
      (And.intro E.laminationTheoryDevelopedClosed
        E.failureCriteriaEstablishedClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse