import HautevilleHouse.CellBiologyMapkSignalingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MapkWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMapkSignalingTheoremCanonicalLaneLean
end HautevilleHouse