import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure SteenrodAlgebra where
  coefficients : Type u
  operations : Nat → (coefficients → coefficients)
  ademRelations : Prop
  cartanFormula : Prop
  instability : Prop

structure SteenrodAlgebraEvidence (S : SteenrodAlgebra) where
  ademRelationsClosed : S.ademRelations
  cartanFormulaClosed : S.cartanFormula
  instabilityClosed : S.instability

def SteenrodAlgebraClosed (S : SteenrodAlgebra) : Prop :=
  S.ademRelations ∧ S.cartanFormula ∧ S.instability

theorem steenrod_algebra_closed_from_evidence (S : SteenrodAlgebra) (E : SteenrodAlgebraEvidence S) :
    SteenrodAlgebraClosed S := by
  exact And.intro E.ademRelationsClosed (And.intro E.cartanFormulaClosed E.instabilityClosed)

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse