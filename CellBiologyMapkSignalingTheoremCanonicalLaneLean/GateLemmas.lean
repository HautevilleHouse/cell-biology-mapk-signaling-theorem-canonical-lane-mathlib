import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse