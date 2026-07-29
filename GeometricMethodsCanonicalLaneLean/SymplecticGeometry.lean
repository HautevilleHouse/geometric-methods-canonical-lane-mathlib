import GeometricMethodsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure SymplecticManifoldPackage (G : RiemannianCurvaturePackage) where
  symplecticForm : Type u
  closedNondegenerate : Prop
  compatibleTriple : Prop
  darBouxCoordinates : Prop

structure SymplecticEvidence {G : RiemannianCurvaturePackage}
    (S : SymplecticManifoldPackage G) where
  closedNondegenerateClosed : S.closedNondegenerate
  compatibleTripleClosed : S.compatibleTriple
  darBouxCoordinatesClosed : S.darBouxCoordinates

def SymplecticClosed {G : RiemannianCurvaturePackage}
    (S : SymplecticManifoldPackage G) : Prop :=
  S.closedNondegenerate ∧ S.compatibleTriple ∧ S.darBouxCoordinates

theorem symplectic_closed_from_evidence
    {G : RiemannianCurvaturePackage} (S : SymplecticManifoldPackage G)
    (E : SymplecticEvidence S) : SymplecticClosed S := by
  exact And.intro E.closedNondegenerateClosed
    (And.intro E.compatibleTripleClosed E.darBouxCoordinatesClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse