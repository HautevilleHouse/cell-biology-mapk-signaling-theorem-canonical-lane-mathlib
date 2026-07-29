import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure NegativeFeedbackLoopPackage where
  erkDependentFeedback : Prop
  phosphataseInduction : Prop
  receptorDesensitization : Prop
  pathwayAttenuation : Prop
  erkDependentFeedbackEvidence : erkDependentFeedback
  phosphataseInductionEvidence : phosphataseInduction
  receptorDesensitizationEvidence : receptorDesensitization
  pathwayAttenuationEvidence : pathwayAttenuation

def FeedbackClosed (F : NegativeFeedbackLoopPackage) : Prop :=
  F.erkDependentFeedback ∧ F.phosphataseInduction ∧ F.receptorDesensitization ∧ F.pathwayAttenuation

theorem feedback_closed_from_evidence (F : NegativeFeedbackLoopPackage) :
    FeedbackClosed F := by
  exact And.intro F.erkDependentFeedbackEvidence
    (And.intro F.phosphataseInductionEvidence
      (And.intro F.receptorDesensitizationEvidence F.pathwayAttenuationEvidence))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse