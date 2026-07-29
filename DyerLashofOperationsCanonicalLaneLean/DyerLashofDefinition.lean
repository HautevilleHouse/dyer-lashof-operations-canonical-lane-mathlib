import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure DyerLashofOperation (n : Nat) where
  degree : Nat
  homologyClass : Type u
  operationResult : homologyClass -> homologyClass
  admissibilityCondition : Prop
  admissibilityConditionClosed : admissibilityCondition

structure DyerLashofAlgebra where
  fieldCharacteristic : Nat
  operations : (n : Nat) -> DyerLashofOperation n
  compositionLaw : Prop
  ademRelations : Prop
  compositionLawClosed : compositionLaw
  ademRelationsClosed : ademRelations

structure DyerLashofAlgebraEvidence (A : DyerLashofAlgebra) where
  compositionLawClosed : A.compositionLaw
  ademRelationsClosed : A.ademRelations

def DyerLashofAlgebraClosed (A : DyerLashofAlgebra) : Prop :=
  A.compositionLaw ∧ A.ademRelations

theorem dyer_lashof_algebra_closed_from_evidence (A : DyerLashofAlgebra) (E : DyerLashofAlgebraEvidence A) : DyerLashofAlgebraClosed A := by
  exact And.intro E.compositionLawClosed E.ademRelationsClosed

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse
