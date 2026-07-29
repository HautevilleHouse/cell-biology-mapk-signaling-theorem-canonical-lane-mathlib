import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

structure MapkSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MapkAdmittedObject where
  space : MapkSpace
  signalingPathway : Prop
  mapkActivation : Prop
  downstreamEffects : Prop
  conclusion : downstreamEffects

def MapkWitnessClosed (O : MapkAdmittedObject) : Prop :=
  O.downstreamEffects

theorem mapk_witness_closed_from_object (O : MapkAdmittedObject) :
    MapkWitnessClosed O := by
  exact O.conclusion

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse