import DyerLashofOperationsCanonicalLaneLean.DyerLashofAdmissibleClass

/-!
# Dyer Lashof Structure Package
-/

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure DyerLashofOperation (n : ℕ) where
  sourceDegree : ℕ
  targetDegree : ℕ
  action : (X : Type) [H : CommRing X] → (X → X)
  cartanFormula : Prop
  ademRelations : Prop

structure DyerLashofAlgebra where
  operations : (n : ℕ) → DyerLashofOperation n
  steenrodSquare : DyerLashofOperation 1
  relations : Prop
  relationsClosed : relations

def DyerLashofAlgebraClosed (A : DyerLashofAlgebra) : Prop :=
  A.relations

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse