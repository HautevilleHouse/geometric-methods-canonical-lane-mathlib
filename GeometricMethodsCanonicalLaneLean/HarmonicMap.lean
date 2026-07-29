import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure HarmonicMapPackage where
  sourceManifold : Type
  targetManifold : Type
  map : sourceManifold → targetManifold
  smoothMap : Prop
  harmonicEquation : Prop
  energyFinite : Prop
  criticalPoint : Prop

structure HarmonicMapEvidence (H : HarmonicMapPackage) where
  smoothMapClosed : H.smoothMap
  harmonicEquationClosed : H.harmonicEquation
  energyFiniteClosed : H.energyFinite
  criticalPointClosed : H.criticalPoint

def HarmonicMapClosed (H : HarmonicMapPackage) : Prop :=
  H.smoothMap ∧ H.harmonicEquation ∧ H.energyFinite ∧ H.criticalPoint

theorem harmonic_map_closed_from_evidence
    (H : HarmonicMapPackage) (E : HarmonicMapEvidence H) :
    HarmonicMapClosed H := by
  exact And.intro E.smoothMapClosed
    (And.intro E.harmonicEquationClosed
      (And.intro E.energyFiniteClosed E.criticalPointClosed))

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse