import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompositeAdmittedObject where
  crystalStructure : CrystallographyBasisPackage
  phaseDiagram : PhaseDiagramStabilityPackage
  elasticity : ElasticityTensorPackage
  fracture : FractureMechanicsPackage
  micromechanics : MicromechanicsHomogenizationPackage
  crystallographyClosed : CrystallographyBasisClosed crystalStructure
  phaseDiagramClosed : PhaseDiagramStabilityClosed phaseDiagram
  elasticityClosed : ElasticityTensorClosed elasticity
  fractureClosed : FractureMechanicsClosed fracture
  micromechanicsClosed : MicromechanicsHomogenizationClosed micromechanics

def CompositeWitnessClosed (O : CompositeAdmittedObject) : Prop :=
  O.crystallographyClosed ∧ O.phaseDiagramClosed ∧ O.elasticityClosed ∧ O.fractureClosed ∧ O.micromechanicsClosed

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
