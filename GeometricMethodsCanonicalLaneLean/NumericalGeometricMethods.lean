import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure GeometricDiscretization where
  meshType : Type u
  discreteMetric : Type v
  discreteConnection : Type w
  numericalScheme : Prop
  convergence : Prop
  errorEstimate : Prop

structure GeometricDiscretizationEvidence (D : GeometricDiscretization) where
  numericalSchemeClosed : D.numericalScheme
  convergenceClosed : D.convergence
  errorEstimateClosed : D.errorEstimate

def GeometricDiscretizationClosed (D : GeometricDiscretization) : Prop :=
  D.numericalScheme ∧ D.convergence ∧ D.errorEstimate

theorem geometric_discretization_closed_from_evidence
    (D : GeometricDiscretization) (E : GeometricDiscretizationEvidence D) :
    GeometricDiscretizationClosed D := by
  exact And.intro E.numericalSchemeClosed
    (And.intro E.convergenceClosed E.errorEstimateClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse