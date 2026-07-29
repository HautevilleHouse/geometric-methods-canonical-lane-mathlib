import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure GeometricAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  metric : Type
  closedGeodesicCurrent : Prop
  conclusion : closedGeodesicCurrent

structure AdmissibleClass where
  object : GeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeometricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse