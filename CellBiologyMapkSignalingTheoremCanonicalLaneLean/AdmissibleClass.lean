import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MapkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MapkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse