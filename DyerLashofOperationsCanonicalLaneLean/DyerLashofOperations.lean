import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DyerLashofOperationsCanonicalLaneLean.SteenrodAlgebra

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure DyerLashofOperationsPackage {S : SteenrodAlgebra} where
  degree : Nat → Nat
  operation : (i : Nat) → S.coefficients → S.coefficients
  admissibilityCondition : Prop
  bracketRelations : Prop

structure DyerLashofOperationsEvidence {S : SteenrodAlgebra} (D : DyerLashofOperationsPackage S) where
  admissibilityConditionClosed : D.admissibilityCondition
  bracketRelationsClosed : D.bracketRelations

def DyerLashofOperationsClosed {S : SteenrodAlgebra} (D : DyerLashofOperationsPackage S) : Prop :=
  D.admissibilityCondition ∧ D.bracketRelations

theorem dyer_lashof_operations_closed_from_evidence
    {S : SteenrodAlgebra} (D : DyerLashofOperationsPackage S) (E : DyerLashofOperationsEvidence D) :
    DyerLashofOperationsClosed D := by
  exact And.intro E.admissibilityConditionClosed E.bracketRelationsClosed

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse