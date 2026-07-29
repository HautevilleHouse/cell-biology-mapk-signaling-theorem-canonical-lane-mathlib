import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure RasRafMekErkCascadePackage where
  rasActivation : Prop
  rafPhosphorylation : Prop
  mekActivation : Prop
  erkActivation : Prop
  signalAmplification : Prop
  rasActivationEvidence : rasActivation
  rafPhosphorylationEvidence : rafPhosphorylation
  mekActivationEvidence : mekActivation
  erkActivationEvidence : erkActivation
  signalAmplificationEvidence : signalAmplification

def CascadeClosed (C : RasRafMekErkCascadePackage) : Prop :=
  C.rasActivation ∧ C.rafPhosphorylation ∧ C.mekActivation ∧ C.erkActivation ∧ C.signalAmplification

theorem cascade_closed_from_evidence (C : RasRafMekErkCascadePackage) :
    CascadeClosed C := by
  exact And.intro C.rasActivationEvidence
    (And.intro C.rafPhosphorylationEvidence
      (And.intro C.mekActivationEvidence
        (And.intro C.erkActivationEvidence C.signalAmplificationEvidence)))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse