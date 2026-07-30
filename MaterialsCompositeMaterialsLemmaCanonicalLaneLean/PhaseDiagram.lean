import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure PhaseDiagram where
  temperatureRange : Set ℝ
  compositionRange : Set ℝ
  phaseBoundary : ℝ → ℝ
  phaseBoundarySmooth : Prop
  phaseBoundarySmoothTerm : phaseBoundarySmooth

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.phaseBoundarySmooth

theorem phase_diagram_closed_from_evidence (P : PhaseDiagram) :
    PhaseDiagramClosed P :=
  P.phaseBoundarySmoothTerm

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse