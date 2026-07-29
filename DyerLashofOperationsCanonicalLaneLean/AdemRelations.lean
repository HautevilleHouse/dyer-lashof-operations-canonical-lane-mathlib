import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure AdemRelation (p : Nat) (n m : Nat) where
  left : DyerLashofOperation n
  right : DyerLashofOperation m
  composition : DyerLashofOperation (n + m)
  relationExpression : Prop
  relationHolds : relationExpression

structure AdemRelationsPackage (A : DyerLashofAlgebra) where
  relations : (n m : Nat) -> AdemRelation A.fieldCharacteristic n m
  consistencyCondition : Prop
  consistencyConditionClosed : consistencyCondition

structure AdemRelationsEvidence {A : DyerLashofAlgebra} (P : AdemRelationsPackage A) where
  consistencyConditionClosed : P.consistencyCondition
  allRelationsHold : ∀ (n m : Nat), (P.relations n m).relationHolds

def AdemRelationsClosed {A : DyerLashofAlgebra} (P : AdemRelationsPackage A) : Prop :=
  P.consistencyCondition ∧ ∀ (n m : Nat), (P.relations n m).relationHolds

theorem adem_relations_closed_from_evidence {A : DyerLashofAlgebra} (P : AdemRelationsPackage A) (E : AdemRelationsEvidence P) : AdemRelationsClosed P := by
  exact And.intro E.consistencyConditionClosed E.allRelationsHold

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse
