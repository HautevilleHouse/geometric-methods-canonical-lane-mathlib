import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure GeodesicRaySpace where
  carrier : Type u
  metric : carrier → carrier → ℝ
  geodesicRay : ℝ → carrier
  rayIsMinimizing : Prop
  rayStartsAtBasepoint : Prop
  rayIsGeodesic : Prop

structure GeodesicRaySpaceEvidence (G : GeodesicRaySpace) where
  rayIsMinimizingClosed : G.rayIsMinimizing
  rayStartsAtBasepointClosed : G.rayStartsAtBasepoint
  rayIsGeodesicClosed : G.rayIsGeodesic

def GeodesicRaySpaceClosed (G : GeodesicRaySpace) : Prop :=
  G.rayIsMinimizing ∧ G.rayStartsAtBasepoint ∧ G.rayIsGeodesic

theorem geodesic_ray_space_closed_from_evidence (G : GeodesicRaySpace) (E : GeodesicRaySpaceEvidence G) :
    GeodesicRaySpaceClosed G := by
  exact And.intro E.rayIsMinimizingClosed (And.intro E.rayStartsAtBasepointClosed E.rayIsGeodesicClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse
