import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.MapkPhosphorylationCascade

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure NegativeFeedbackPackage {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} {M : MapkCascadePackage R C} where
  duspInduction : Prop
  erkDephosphorylation : Prop
  receptorInternalization : Prop
  feedbackLoopClosure : Prop
  signalAttenuation : Prop
  duspInductionTerm : duspInduction
  feedbackLoopClosureTerm : feedbackLoopClosure

def NegativeFeedbackClosed {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} {M : MapkCascadePackage R C} (F : NegativeFeedbackPackage R C M) : Prop :=
  F.duspInduction ∧ F.erkDephosphorylation ∧ F.signalAttenuation ∧ F.feedbackLoopClosure

theorem negative_feedback_closed_from_evidence
    {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} {M : MapkCascadePackage R C}
    (F : NegativeFeedbackPackage R C M) (E : F.duspInductionTerm)
    (E2 : F.feedbackLoopClosureTerm) : NegativeFeedbackClosed F := by
  exact And.intro F.duspInduction (And.intro F.erkDephosphorylation (And.intro F.signalAttenuation F.feedbackLoopClosure))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse