import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure JacobiFieldPackage where
  geodesicVariation : Prop
  jacobiEquation : Prop
  conjugatePoints : Prop
  indexForm : Prop
  rauchComparison : Prop

structure JacobiFieldEvidence (J : JacobiFieldPackage) where
  geodesicVariationClosed : J.geodesicVariation
  jacobiEquationClosed : J.jacobiEquation
  conjugatePointsClosed : J.conjugatePoints
  indexFormClosed : J.indexForm
  rauchComparisonClosed : J.rauchComparison

def JacobiFieldClosed (J : JacobiFieldPackage) : Prop :=
  J.geodesicVariation ∧ J.jacobiEquation ∧ J.conjugatePoints ∧
  J.indexForm ∧ J.rauchComparison

theorem jacobi_field_closed_from_evidence
    (J : JacobiFieldPackage) (E : JacobiFieldEvidence J) :
    JacobiFieldClosed J := by
  exact And.intro E.geodesicVariationClosed
    (And.intro E.jacobiEquationClosed
      (And.intro E.conjugatePointsClosed
        (And.intro E.indexFormClosed E.rauchComparisonClosed)))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse