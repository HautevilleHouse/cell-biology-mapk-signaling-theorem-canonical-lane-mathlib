import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.RasGtpCycle

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure MapkCascadePackage {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} where
  rafKinaseActivation : Prop
  mekKinaseActivation : Prop
  erkKinaseActivation : Prop
  phosphorylationSiteRaf : Type u
  phosphorylationSiteMek : Type v
  phosphorylationSiteErk : Type w
  cascadeSignalingCompleted : Prop
  rafKinaseActivationTerm : rafKinaseActivation
  mekKinaseActivationTerm : mekKinaseActivation
  erkKinaseActivationTerm : erkKinaseActivation

def MapkCascadeClosed {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R} (M : MapkCascadePackage R C) : Prop :=
  M.rafKinaseActivation ∧ M.mekKinaseActivation ∧ M.erkKinaseActivation ∧ M.cascadeSignalingCompleted

theorem mapk_cascade_closed_from_evidence
    {R : ReceptorTyrosineKinasePackage} {C : RasActivationCyclePackage R}
    (M : MapkCascadePackage R C) (E : M.rafKinaseActivationTerm)
    (E2 : M.mekKinaseActivationTerm) (E3 : M.erkKinaseActivationTerm) :
    MapkCascadeClosed M := by
  exact And.intro M.rafKinaseActivation (And.intro M.mekKinaseActivation (And.intro M.erkKinaseActivation M.cascadeSignalingCompleted))

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse