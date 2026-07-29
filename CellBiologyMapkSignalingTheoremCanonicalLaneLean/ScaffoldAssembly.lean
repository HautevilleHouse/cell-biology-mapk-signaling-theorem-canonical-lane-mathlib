import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure ScaffoldAssemblyPackage where
  ksrOrIqg1Present : Prop
  kinaseBindingSites : Prop
  signalEfficiency : Prop
  compartmentalization : Prop
  ksrOrIqg1PresentEvidence : ksrOrIqg1Present
  kinaseBindingSitesEvidence : kinaseBindingSites
  signalEfficiencyEvidence : signalEfficiency
  compartmentalizationEvidence : compartmentalization

def ScaffoldClosed (S : ScaffoldAssemblyPackage) : Prop :=
  S.ksrOrIqg1Present ∧ S.kinaseBindingSites ∧ S.signalEfficiency ∧ S.compartmentalization

theorem scaffold_closed_from_evidence (S : ScaffoldAssemblyPackage) :
    ScaffoldClosed S := by
  exact And.intro S.ksrOrIqg1PresentEvidence
    (And.intro S.kinaseBindingSitesEvidence
      (And.intro S.signalEfficiencyEvidence S.compartmentalizationEvidence))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse