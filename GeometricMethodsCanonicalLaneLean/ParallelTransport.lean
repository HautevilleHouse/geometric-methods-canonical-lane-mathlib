import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure ParallelTransportPackage where
  connection : Type u
  covariantDerivative : Type v
  holonomyGroup : Type w
  parallelTransportMap : Prop
  pathIndependence : Prop
  curvatureFromHolonomy : Prop

structure ParallelTransportEvidence (P : ParallelTransportPackage) where
  parallelTransportMapClosed : P.parallelTransportMap
  pathIndependenceClosed : P.pathIndependence
  curvatureFromHolonomyClosed : P.curvatureFromHolonomy

def ParallelTransportClosed (P : ParallelTransportPackage) : Prop :=
  P.parallelTransportMap ∧ P.pathIndependence ∧ P.curvatureFromHolonomy

theorem parallel_transport_closed_from_evidence (P : ParallelTransportPackage)
    (E : ParallelTransportEvidence P) : ParallelTransportClosed P := by
  exact And.intro E.parallelTransportMapClosed
    (And.intro E.pathIndependenceClosed E.curvatureFromHolonomyClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse