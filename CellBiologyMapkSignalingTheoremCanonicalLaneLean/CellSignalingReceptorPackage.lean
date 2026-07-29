import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure ReceptorTyrosineKinasePackage where
  extracellularDomain : Type u
  ligandBindingDomain : Type v
  dimerizationRegion : Prop
  kinaseDomain : Type w
  atpBindingSite : Prop
  kinaseActivity : Prop
  kinaseActivityTerm : kinaseActivity
  ligandBindingDomainTerm : ligandBindingDomain

def ReceptorTyrosineKinaseClosed (R : ReceptorTyrosineKinasePackage) : Prop :=
  R.dimerizationRegion ∧ R.kinaseActivity ∧ R.atpBindingSite

theorem receptor_tyrosine_kinase_closed_from_evidence
    (R : ReceptorTyrosineKinasePackage) (E : R.kinaseActivityTerm) :
    ReceptorTyrosineKinaseClosed R := by
  exact And.intro R.dimerizationRegion (And.intro R.kinaseActivity R.atpBindingSite)

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse