import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure SteenrodAlgebraPackage where
  fieldCharacteristic : Nat
  admissibleMonomials : Type u
  cupIProduct : Type v
  ademRelations : Prop
  steenrodSquares : Nat -> Type w
  bocksteinOperation : Prop
  fieldCharacteristicIsPrime : fieldCharacteristic.Prime
  ademRelationsClosed : ademRelations

structure SteenrodAlgebraEvidence (S : SteenrodAlgebraPackage) where
  ademRelationsClosed : S.ademRelations
  steenrodSquaresDefined : Prop
  bocksteinDefined : S.bocksteinOperation

def SteenrodAlgebraClosed (S : SteenrodAlgebraPackage) : Prop :=
  S.ademRelations ∧ S.fieldCharacteristicIsPrime

theorem steenrod_algebra_closed_from_evidence (S : SteenrodAlgebraPackage) (E : SteenrodAlgebraEvidence S) : SteenrodAlgebraClosed S := by
  exact And.intro E.ademRelationsClosed S.fieldCharacteristicIsPrime

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse
