import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure GeodesicDeviationPackage where
  jacobiField : Type u
  indexForm : Type v
  conjugatePoints : Type w
  schmidTensor : Type x
  monotonicity : Prop
  oscillationControl : Prop
  comparisonInequality : Prop

structure GeodesicDeviationEvidence (G : GeodesicDeviationPackage) where
  monotonicityClosed : G.monotonicity
  oscillationControlClosed : G.oscillationControl
  comparisonInequalityClosed : G.comparisonInequality

def GeodesicDeviationClosed (G : GeodesicDeviationPackage) : Prop :=
  G.monotonicity ∧ G.oscillationControl ∧ G.comparisonInequality

theorem geodesic_deviation_closed_from_evidence (G : GeodesicDeviationPackage)
    (E : GeodesicDeviationEvidence G) : GeodesicDeviationClosed G := by
  exact And.intro E.monotonicityClosed
    (And.intro E.oscillationControlClosed E.comparisonInequalityClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse