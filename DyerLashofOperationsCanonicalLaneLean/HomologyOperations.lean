import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure HomologyOperation (X : Type u) [TopologicalSpace X] where
  sourceDegree : Nat
  targetDegree : Nat
  map : (n : Nat) -> (X -> X)
  naturalityCondition : Prop
  naturalityConditionClosed : naturalityCondition

structure HomologyOperationsPackage where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  operations : (n : Nat) -> HomologyOperation baseSpace
  cartanFormula : Prop
  instabilityCondition : Prop
  cartanFormulaClosed : cartanFormula
  instabilityConditionClosed : instabilityCondition

structure HomologyOperationsEvidence (P : HomologyOperationsPackage) where
  cartanFormulaClosed : P.cartanFormula
  instabilityConditionClosed : P.instabilityCondition

def HomologyOperationsClosed (P : HomologyOperationsPackage) : Prop :=
  P.cartanFormula ∧ P.instabilityCondition

theorem homology_operations_closed_from_evidence (P : HomologyOperationsPackage) (E : HomologyOperationsEvidence P) : HomologyOperationsClosed P := by
  exact And.intro E.cartanFormulaClosed E.instabilityConditionClosed

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse
