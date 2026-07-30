import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsLemmaCanonicalLaneLean

structure FractureToughnessEnvelopePackage where
  crackBridgingMechanism : Prop
  fiberDebonding : Prop
  processZoneSize : Prop
  tougheningRatio : Prop

structure FractureToughnessEnvelopeEvidence (F : FractureToughnessEnvelopePackage) where
  crackBridgingMechanismClosed : F.crackBridgingMechanism
  fiberDebondingClosed : F.fiberDebonding
  processZoneSizeClosed : F.processZoneSize
  tougheningRatioClosed : F.tougheningRatio

def FractureToughnessEnvelopeClosed (F : FractureToughnessEnvelopePackage) : Prop :=
  F.crackBridgingMechanism ∧ F.fiberDebonding ∧ F.processZoneSize ∧ F.tougheningRatio

theorem fracture_toughness_envelope_closed_from_evidence
    (F : FractureToughnessEnvelopePackage) (E : FractureToughnessEnvelopeEvidence F) :
    FractureToughnessEnvelopeClosed F := by
  exact And.intro E.crackBridgingMechanismClosed
    (And.intro E.fiberDebondingClosed
      (And.intro E.processZoneSizeClosed E.tougheningRatioClosed))

end MaterialsCompositeMaterialsLemmaCanonicalLaneLean
end HautevilleHouse