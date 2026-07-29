import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure NuclearTranslocationPackage where
  erkNuclearImport : Prop
  transcriptionFactorPhosphorylation : Prop
  geneExpressionChange : Prop
  nuclearExportSignal : Prop
  erkNuclearImportEvidence : erkNuclearImport
  transcriptionFactorPhosphorylationEvidence : transcriptionFactorPhosphorylation
  geneExpressionChangeEvidence : geneExpressionChange
  nuclearExportSignalEvidence : nuclearExportSignal

def TranslocationClosed (N : NuclearTranslocationPackage) : Prop :=
  N.erkNuclearImport ∧ N.transcriptionFactorPhosphorylation ∧ N.geneExpressionChange ∧ N.nuclearExportSignal

theorem translocation_closed_from_evidence (N : NuclearTranslocationPackage) :
    TranslocationClosed N := by
  exact And.intro N.erkNuclearImportEvidence
    (And.intro N.transcriptionFactorPhosphorylationEvidence
      (And.intro N.geneExpressionChangeEvidence N.nuclearExportSignalEvidence))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse