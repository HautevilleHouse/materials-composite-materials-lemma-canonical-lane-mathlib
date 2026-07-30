import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure CompositeMaterialLattice where
  phaseA : Type u
  phaseB : Type v
  latticeParameter : ℝ
  elasticModulusA : ℝ
  elasticModulusB : ℝ
  interfaceEnergy : ℝ
  admissible : Prop
  admissibleTerm : admissible

def CompositeMaterialLatticeClosed (L : CompositeMaterialLattice) : Prop :=
  L.admissible

theorem composite_material_lattice_closed_from_evidence (L : CompositeMaterialLattice) :
    CompositeMaterialLatticeClosed L :=
  L.admissibleTerm

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse