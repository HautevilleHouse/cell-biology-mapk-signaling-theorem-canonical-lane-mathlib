import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.MapkPhosphorylationCascade

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure TranscriptionRegulationPackage {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} {M : MapkCascadePackage R C} where
  erkNuclearTranslocation : Prop
  transcriptionFactorPhosphorylation : Prop
  targetGeneExpressionActivated : Prop
  crebPhosphorylation : Prop
  elk1Phosphorylation : Prop
  cellCycleProgression : Prop
  differentiationResponse : Prop
  erkNuclearTranslocationTerm : erkNuclearTranslocation
  targetGeneExpressionActivatedTerm : targetGeneExpressionActivated

def TranscriptionRegulationClosed {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} {M : MapkCascadePackage R C} (T : TranscriptionRegulationPackage R C M) : Prop :=
  T.erkNuclearTranslocation ∧ T.transcriptionFactorPhosphorylation ∧ T.targetGeneExpressionActivated

theorem transcription_regulation_closed_from_evidence
    {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} {M : MapkCascadePackage R C}
    (T : TranscriptionRegulationPackage R C M) (E : T.erkNuclearTranslocationTerm)
    (E2 : T.targetGeneExpressionActivatedTerm) : TranscriptionRegulationClosed T := by
  exact And.intro T.erkNuclearTranslocation (And.intro T.transcriptionFactorPhosphorylation T.targetGeneExpressionActivated)

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse