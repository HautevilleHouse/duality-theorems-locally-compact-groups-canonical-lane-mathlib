import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DualityAdmittedObject where
  space : DualitySpace
  locallyCompactGroup : Prop
  dualGroup : Type
  dualTopology : TopologicalSpace dualGroup
  dualityIsomorphism : Prop
  conclusion : dualityIsomorphism

structure DualityEndgameState where
  object : DualityAdmittedObject

def DualityWitnessClosed (O : DualityAdmittedObject) : Prop :=
  O.dualityIsomorphism

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse