import HautevilleHouse.DyerLashofOperationsCanonicalLaneLean.MathlibObjects
import Mathlib.Algebra.Homology.Homotopy

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DyerLashofSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DyerLashofAdmittedObject where
  space : DyerLashofSpace
  infiniteLoopSpace : Prop
  homologyHopf : Prop
  dyerLashofStructure : Prop
  conclusion : dyerLashofStructure

structure DyerLashofEndgameState where
  object : DyerLashofAdmittedObject

def DyerLashofWitnessClosed (O : DyerLashofAdmittedObject) : Prop :=
  O.dyerLashofStructure

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse