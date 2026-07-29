import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure RicciFlowPDEPackage where
  timeParameter : Type
  metricAt : timeParameter → Type
  initialMetricMatches : Prop
  differentiableMetricFamily : Prop
  ricciFlowEquation : Prop
  maximalTimeInterval : Prop

structure RicciFlowPDEEvidence (F : RicciFlowPDEPackage) where
  initialMetricMatchesClosed : F.initialMetricMatches
  differentiableMetricFamilyClosed : F.differentiableMetricFamily
  ricciFlowEquationClosed : F.ricciFlowEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def RicciFlowPDEClosed (F : RicciFlowPDEPackage) : Prop :=
  F.initialMetricMatches ∧ F.differentiableMetricFamily ∧
  F.ricciFlowEquation ∧ F.maximalTimeInterval

theorem ricci_flow_pde_closed_from_evidence
    (F : RicciFlowPDEPackage) (E : RicciFlowPDEEvidence F) :
    RicciFlowPDEClosed F := by
  exact And.intro E.initialMetricMatchesClosed
    (And.intro E.differentiableMetricFamilyClosed
      (And.intro E.ricciFlowEquationClosed E.maximalTimeIntervalClosed))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse