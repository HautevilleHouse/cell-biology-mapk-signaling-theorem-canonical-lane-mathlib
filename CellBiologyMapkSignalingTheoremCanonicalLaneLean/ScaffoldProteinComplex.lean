import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure ScaffoldProteinComplexPackage where
  scaffoldProtein : Type u
  ksrProtein : Type v
  mapkModuleAssembly : Prop
  signalSpecificity : Prop
  localizationControl : Prop
  complexStability : Prop
  mapkModuleAssemblyTerm : mapkModuleAssembly
  signalSpecificityTerm : signalSpecificity

def ScaffoldProteinComplexClosed (S : ScaffoldProteinComplexPackage) : Prop :=
  S.mapkModuleAssembly ∧ S.signalSpecificity ∧ S.localizationControl ∧ S.complexStability

theorem scaffold_protein_complex_closed_from_evidence
    (S : ScaffoldProteinComplexPackage) (E : S.mapkModuleAssemblyTerm)
    (E2 : S.signalSpecificityTerm) : ScaffoldProteinComplexClosed S := by
  exact And.intro S.mapkModuleAssembly (And.intro S.signalSpecificity (And.intro S.localizationControl S.complexStability))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse