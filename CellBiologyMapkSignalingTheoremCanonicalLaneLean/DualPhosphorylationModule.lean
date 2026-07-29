import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure DualPhosphorylationModulePackage where
  thrPhosphorylation : Prop
  tyrPhosphorylation : Prop
  phosphoThrRecognition : Prop
  phosphoTyrRecognition : Prop
  phosphataseControl : Prop
  thrPhosphorylationEvidence : thrPhosphorylation
  tyrPhosphorylationEvidence : tyrPhosphorylation
  phosphoThrRecognitionEvidence : phosphoThrRecognition
  phosphoTyrRecognitionEvidence : phosphoTyrRecognition
  phosphataseControlEvidence : phosphataseControl

def DualPhosphorylationClosed (D : DualPhosphorylationModulePackage) : Prop :=
  D.thrPhosphorylation ∧ D.tyrPhosphorylation ∧ D.phosphoThrRecognition ∧ D.phosphoTyrRecognition ∧ D.phosphataseControl

theorem dual_phosphorylation_closed_from_evidence (D : DualPhosphorylationModulePackage) :
    DualPhosphorylationClosed D := by
  exact And.intro D.thrPhosphorylationEvidence
    (And.intro D.tyrPhosphorylationEvidence
      (And.intro D.phosphoThrRecognitionEvidence
        (And.intro D.phosphoTyrRecognitionEvidence D.phosphataseControlEvidence)))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse