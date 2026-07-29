import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure ComparisonGeometryPackage where
  sectionalCurvatureBound : Prop
  volumeComparison : Prop
  diameterComparison : Prop
  triangleComparison : Prop
  hessianComparison : Prop

structure ComparisonGeometryEvidence (C : ComparisonGeometryPackage) where
  sectionalCurvatureBoundClosed : C.sectionalCurvatureBound
  volumeComparisonClosed : C.volumeComparison
  diameterComparisonClosed : C.diameterComparison
  triangleComparisonClosed : C.triangleComparison
  hessianComparisonClosed : C.hessianComparison

def ComparisonGeometryClosed (C : ComparisonGeometryPackage) : Prop :=
  C.sectionalCurvatureBound ∧ C.volumeComparison ∧ C.diameterComparison ∧
  C.triangleComparison ∧ C.hessianComparison

theorem comparison_geometry_closed_from_evidence
    (C : ComparisonGeometryPackage) (E : ComparisonGeometryEvidence C) :
    ComparisonGeometryClosed C := by
  exact And.intro E.sectionalCurvatureBoundClosed
    (And.intro E.volumeComparisonClosed
      (And.intro E.diameterComparisonClosed
        (And.intro E.triangleComparisonClosed E.hessianComparisonClosed)))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse