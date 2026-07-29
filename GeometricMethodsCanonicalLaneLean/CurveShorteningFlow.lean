import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure CurveShorteningFlowPackage where
  curve : Type u
  embeddingSpace : Type v
  curvatureFlow : Prop
  evolutionEquation : Prop
  crossingPointCondition : Prop
  singularityFormation : Prop

structure CurveShorteningFlowEvidence (C : CurveShorteningFlowPackage) where
  curvatureFlowClosed : C.curvatureFlow
  evolutionEquationClosed : C.evolutionEquation
  crossingPointConditionClosed : C.crossingPointCondition
  singularityFormationClosed : C.singularityFormation

def CurveShorteningFlowClosed (C : CurveShorteningFlowPackage) : Prop :=
  C.curvatureFlow ∧ C.evolutionEquation ∧ C.crossingPointCondition ∧ C.singularityFormation

theorem curve_shortening_flow_closed_from_evidence (C : CurveShorteningFlowPackage) (E : CurveShorteningFlowEvidence C) :
    CurveShorteningFlowClosed C := by
  exact And.intro E.curvatureFlowClosed (And.intro E.evolutionEquationClosed (And.intro E.crossingPointConditionClosed E.singularityFormationClosed))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse