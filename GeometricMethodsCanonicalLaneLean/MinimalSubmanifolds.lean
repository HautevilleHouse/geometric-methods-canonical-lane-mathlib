import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure MinimalSubmanifoldPackage where
  immersion : Type u
  meanCurvatureZero : Prop
  firstVariation : Prop
  secondVariation : Prop
  stability : Prop
  areaMinimizing : Prop

structure MinimalSubmanifoldEvidence (M : MinimalSubmanifoldPackage) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  firstVariationClosed : M.firstVariation
  secondVariationClosed : M.secondVariation
  stabilityClosed : M.stability
  areaMinimizingClosed : M.areaMinimizing

def MinimalSubmanifoldClosed (M : MinimalSubmanifoldPackage) : Prop :=
  M.meanCurvatureZero ∧ M.firstVariation ∧ M.secondVariation ∧
  M.stability ∧ M.areaMinimizing

theorem minimal_submanifold_closed_from_evidence
    (M : MinimalSubmanifoldPackage) (E : MinimalSubmanifoldEvidence M) :
    MinimalSubmanifoldClosed M := by
  exact And.intro E.meanCurvatureZeroClosed
    (And.intro E.firstVariationClosed
      (And.intro E.secondVariationClosed
        (And.intro E.stabilityClosed E.areaMinimizingClosed)))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse