import GeometricMethodsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeometricSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeometricAdmittedObject where
  space : GeometricSpace
  closedManifold : Prop
  simplyConnected : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  homeomorphicToTarget : Prop
  conclusion : homeomorphicToTarget

structure GeometricEndgameState where
  object : GeometricAdmittedObject

def GeometricWitnessClosed (O : GeometricAdmittedObject) : Prop :=
  O.homeomorphicToTarget

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse