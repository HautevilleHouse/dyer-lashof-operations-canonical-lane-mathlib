import HautevilleHouse.DyerLashofOperationsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure AdmissibleClass where
  object : DyerLashofAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DyerLashofWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse