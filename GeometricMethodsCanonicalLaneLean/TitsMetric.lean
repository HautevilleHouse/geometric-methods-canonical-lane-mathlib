import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure TitsMetric where
  boundary : BoundaryAtInfinity
  angularMetric : boundary.boundaryType → boundary.boundaryType → ℝ
  inducedFromCAT0 : Prop
  completeMetric : Prop

structure TitsMetricEvidence (T : TitsMetric) where
  inducedFromCAT0Closed : T.inducedFromCAT0
  completeMetricClosed : T.completeMetric

def TitsMetricClosed (T : TitsMetric) : Prop :=
  T.inducedFromCAT0 ∧ T.completeMetric

theorem tits_metric_closed_from_evidence (T : TitsMetric) (E : TitsMetricEvidence T) :
    TitsMetricClosed T := by
  exact And.intro E.inducedFromCAT0Closed E.completeMetricClosed

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse
