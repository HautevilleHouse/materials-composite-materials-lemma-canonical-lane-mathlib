import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure CompositeMicromechanicsPackage where
  inclusionGeometry : Prop
  matrixProperties : Prop
  interfaceBonding : Prop
  effectiveProperties : Prop

structure CompositeMicromechanicsEvidence (C : CompositeMicromechanicsPackage) where
  inclusionGeometryClosed : C.inclusionGeometry
  matrixPropertiesClosed : C.matrixProperties
  interfaceBondingClosed : C.interfaceBonding
  effectivePropertiesClosed : C.effectiveProperties

def CompositeMicromechanicsClosed (C : CompositeMicromechanicsPackage) : Prop :=
  C.inclusionGeometry ∧ C.matrixProperties ∧ C.interfaceBonding ∧ C.effectiveProperties

theorem composite_micromechanics_closed_from_evidence
    (C : CompositeMicromechanicsPackage) (E : CompositeMicromechanicsEvidence C) :
    CompositeMicromechanicsClosed C := by
  exact And.intro E.inclusionGeometryClosed
    (And.intro E.matrixPropertiesClosed
      (And.intro E.interfaceBondingClosed E.effectivePropertiesClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse