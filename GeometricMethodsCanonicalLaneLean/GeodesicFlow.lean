import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure GeodesicFlowSpace where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  geodesic : Type w
  geodesicEquation : Prop
  exponentialMap : Type x
  completeness : Prop

structure GeodesicFlowEvidence (G : GeodesicFlowSpace) where
  geodesicEquationClosed : G.geodesicEquation
  exponentialDefined : G.exponentialMap
  completenessClosed : G.completeness

def GeodesicFlowClosed (G : GeodesicFlowSpace) : Prop :=
  G.geodesicEquation ∧ G.exponentialMap ∧ G.completeness

theorem geodesic_flow_closed_from_evidence
    (G : GeodesicFlowSpace) (E : GeodesicFlowEvidence G) :
    GeodesicFlowClosed G := by
  exact And.intro E.geodesicEquationClosed
    (And.intro E.exponentialDefined E.completenessClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse