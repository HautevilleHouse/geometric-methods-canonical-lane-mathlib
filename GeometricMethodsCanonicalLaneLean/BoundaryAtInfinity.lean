import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure BoundaryAtInfinity where
  cat0Space : CAT0Space
  boundaryType : Type u
  pointsAreEquivalenceClasses : Prop
  coneTopology : Prop

structure BoundaryAtInfinityEvidence (B : BoundaryAtInfinity) where
  pointsAreEquivalenceClassesClosed : B.pointsAreEquivalenceClasses
  coneTopologyClosed : B.coneTopology

def BoundaryAtInfinityClosed (B : BoundaryAtInfinity) : Prop :=
  B.pointsAreEquivalenceClasses ∧ B.coneTopology

theorem boundary_at_infinity_closed_from_evidence (B : BoundaryAtInfinity) (E : BoundaryAtInfinityEvidence B) :
    BoundaryAtInfinityClosed B := by
  exact And.intro E.pointsAreEquivalenceClassesClosed E.coneTopologyClosed

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse
