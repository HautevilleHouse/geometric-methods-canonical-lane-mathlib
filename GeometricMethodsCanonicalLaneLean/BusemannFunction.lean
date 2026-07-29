import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure BusemannFunction where
  geodesicRay : GeodesicRaySpace
  limitFunction : GeodesicRaySpace.carrier → ℝ
  definedAsLimit : Prop
  limitExists : Prop
  limitFunctionContinuous : Prop

structure BusemannFunctionEvidence (B : BusemannFunction) where
  definedAsLimitClosed : B.definedAsLimit
  limitExistsClosed : B.limitExists
  limitFunctionContinuousClosed : B.limitFunctionContinuous

def BusemannFunctionClosed (B : BusemannFunction) : Prop :=
  B.definedAsLimit ∧ B.limitExists ∧ B.limitFunctionContinuous

theorem busemann_function_closed_from_evidence (B : BusemannFunction) (E : BusemannFunctionEvidence B) :
    BusemannFunctionClosed B := by
  exact And.intro E.definedAsLimitClosed (And.intro E.limitExistsClosed E.limitFunctionContinuousClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse
