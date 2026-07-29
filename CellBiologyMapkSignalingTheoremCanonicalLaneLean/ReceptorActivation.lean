import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Prop
  receptorDimerization : Prop
  phosphorylationSites : Prop
  activationSignal : Prop
  ligandBindingEvidence : ligandBinding
  receptorDimerizationEvidence : receptorDimerization
  phosphorylationSitesEvidence : phosphorylationSites
  activationSignalEvidence : activationSignal

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBinding ∧ R.receptorDimerization ∧ R.phosphorylationSites ∧ R.activationSignal

theorem receptor_activation_closed_from_evidence (R : ReceptorActivationPackage) :
    ReceptorActivationClosed R := by
  exact And.intro R.ligandBindingEvidence
    (And.intro R.receptorDimerizationEvidence
      (And.intro R.phosphorylationSitesEvidence R.activationSignalEvidence))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse