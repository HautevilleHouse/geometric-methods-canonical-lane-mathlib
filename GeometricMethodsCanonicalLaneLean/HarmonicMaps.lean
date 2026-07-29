import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure HarmonicMapPackage where
  targetManifold : Type u
  targetMetric : Type v
  energyFunctional : Prop
  eulerLagrange : Prop
  regularity : Prop
  existence : Prop

structure HarmonicMapEvidence (H : HarmonicMapPackage) where
  energyFunctionalClosed : H.energyFunctional
  eulerLagrangeClosed : H.eulerLagrange
  regularityClosed : H.regularity
  existenceClosed : H.existence

def HarmonicMapClosed (H : HarmonicMapPackage) : Prop :=
  H.energyFunctional ∧ H.eulerLagrange ∧ H.regularity ∧ H.existence

theorem harmonic_map_closed_from_evidence
    (H : HarmonicMapPackage) (E : HarmonicMapEvidence H) :
    HarmonicMapClosed H := by
  exact And.intro E.energyFunctionalClosed
    (And.intro E.eulerLagrangeClosed
      (And.intro E.regularityClosed E.existenceClosed))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse