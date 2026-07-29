import GeometricMethodsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure ComplexManifoldPackage (G : RiemannianCurvaturePackage) where
  complexStructure : Type u
  integrableAlmostComplex : Prop
  kaehlerMetric : Prop
  calabiYauCondition : Prop

structure ComplexEvidence {G : RiemannianCurvaturePackage}
    (C : ComplexManifoldPackage G) where
  integrableAlmostComplexClosed : C.integrableAlmostComplex
  kaehlerMetricClosed : C.kaehlerMetric
  calabiYauConditionClosed : C.calabiYauCondition

def ComplexClosed {G : RiemannianCurvaturePackage}
    (C : ComplexManifoldPackage G) : Prop :=
  C.integrableAlmostComplex ∧ C.kaehlerMetric ∧ C.calabiYauCondition

theorem complex_closed_from_evidence
    {G : RiemannianCurvaturePackage} (C : ComplexManifoldPackage G)
    (E : ComplexEvidence C) : ComplexClosed C := by
  exact And.intro E.integrableAlmostComplexClosed
    (And.intro E.kaehlerMetricClosed E.calabiYauConditionClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse