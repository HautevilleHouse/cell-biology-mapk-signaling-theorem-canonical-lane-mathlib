import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.CellSignalingReceptorPackage

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure RasActivationCyclePackage {R : ReceptorTyrosineKinasePackage} where
  sosGefRecruitment : Prop
  rasGdpBound : Prop
  rasGtpBound : Prop
  gtpHydrolysisByGap : Prop
  gtpaseAcceleratingProtein : Prop
  rasGdpToGtpExchange : Prop
  sosGefRecruitmentTerm : sosGefRecruitment
  rasGtpBoundTerm : rasGtpBound

def RasActivationCycleClosed {R : ReceptorTyrosineKinasePackage} (C : RasActivationCyclePackage R) : Prop :=
  C.rasGtpBound ∧ C.gtpHydrolysisByGap ∧ C.rasGdpToGtpExchange

theorem ras_activation_cycle_closed_from_evidence
    {R : ReceptorTyrosineKinasePackage} (C : RasActivationCyclePackage R)
    (E : C.rasGtpBoundTerm) : RasActivationCycleClosed C := by
  exact And.intro C.rasGtpBound (And.intro C.gtpHydrolysisByGap C.rasGdpToGtpExchange)

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse