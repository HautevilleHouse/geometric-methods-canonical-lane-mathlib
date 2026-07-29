import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure GeodesicCurrentPackage where
  manifold : Type
  topology : TopologicalSpace manifold
  current : Type
  closedness : Prop
  integrality : Prop
  stationarity : Prop

structure GeodesicCurrentEvidence (G : GeodesicCurrentPackage) where
  closednessClosed : G.closedness
  integralityClosed : G.integrality
  stationarityClosed : G.stationarity

def GeodesicCurrentClosed (G : GeodesicCurrentPackage) : Prop :=
  G.closedness ∧ G.integrality ∧ G.stationarity

theorem geodesic_current_closed_from_evidence
    (G : GeodesicCurrentPackage) (E : GeodesicCurrentEvidence G) :
    GeodesicCurrentClosed G := by
  exact And.intro E.closednessClosed (And.intro E.integralityClosed E.stationarityClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse