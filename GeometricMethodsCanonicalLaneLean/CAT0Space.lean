import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure CAT0Space where
  carrier : Type u
  metric : carrier → carrier → ℝ
  geodesicSpace : Prop
  cat0Inequality : Prop

structure CAT0SpaceEvidence (C : CAT0Space) where
  geodesicSpaceClosed : C.geodesicSpace
  cat0InequalityClosed : C.cat0Inequality

def CAT0SpaceClosed (C : CAT0Space) : Prop :=
  C.geodesicSpace ∧ C.cat0Inequality

theorem cat0_space_closed_from_evidence (C : CAT0Space) (E : CAT0SpaceEvidence C) :
    CAT0SpaceClosed C := by
  exact And.intro E.geodesicSpaceClosed E.cat0InequalityClosed

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse
