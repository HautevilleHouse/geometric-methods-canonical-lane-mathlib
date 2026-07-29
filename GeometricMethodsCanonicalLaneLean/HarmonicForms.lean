import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure HarmonicFormsPackage where
  differentialForms : Type u
  hodgeLaplacian : Type v
  hodgeDecomposition : Prop
  cohomologyRepresentation : Prop
  bochnerFormula : Prop
  curvatureInterplay : Prop

structure HarmonicFormsEvidence (H : HarmonicFormsPackage) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  cohomologyRepresentationClosed : H.cohomologyRepresentation
  bochnerFormulaClosed : H.bochnerFormula
  curvatureInterplayClosed : H.curvatureInterplay

def HarmonicFormsClosed (H : HarmonicFormsPackage) : Prop :=
  H.hodgeDecomposition ∧ H.cohomologyRepresentation ∧
  H.bochnerFormula ∧ H.curvatureInterplay

theorem harmonic_forms_closed_from_evidence (H : HarmonicFormsPackage)
    (E : HarmonicFormsEvidence H) : HarmonicFormsClosed H := by
  exact And.intro E.hodgeDecompositionClosed
    (And.intro E.cohomologyRepresentationClosed
      (And.intro E.bochnerFormulaClosed E.curvatureInterplayClosed))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse