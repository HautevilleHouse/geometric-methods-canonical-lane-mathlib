import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure HadamardManifold where
  manifold : Type u
  metric : manifold → manifold → ℝ
  complete : Prop
  simplyConnected : Prop
  nonPositiveCurvature : Prop

structure HadamardManifoldEvidence (H : HadamardManifold) where
  completeClosed : H.complete
  simplyConnectedClosed : H.simplyConnected
  nonPositiveCurvatureClosed : H.nonPositiveCurvature

def HadamardManifoldClosed (H : HadamardManifold) : Prop :=
  H.complete ∧ H.simplyConnected ∧ H.nonPositiveCurvature

theorem hadamard_manifold_closed_from_evidence (H : HadamardManifold) (E : HadamardManifoldEvidence H) :
    HadamardManifoldClosed H := by
  exact And.intro E.completeClosed (And.intro E.simplyConnectedClosed E.nonPositiveCurvatureClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse
