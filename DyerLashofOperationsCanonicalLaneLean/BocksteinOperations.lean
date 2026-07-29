import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure BocksteinOperation (p : Nat) where
  degreeShift : Nat
  exactnessProperty : Prop
  mayesFormula : Prop
  exactnessPropertyClosed : exactnessProperty
  mayesFormulaClosed : mayesFormula

structure BocksteinPackage where
  prime : Nat
  operations : (n : Nat) -> BocksteinOperation prime
  compatibilityWithDyerLashof : Prop
  compatibilityWithDyerLashofClosed : compatibilityWithDyerLashof

structure BocksteinEvidence (B : BocksteinPackage) where
  compatibilityWithDyerLashofClosed : B.compatibilityWithDyerLashof
  operationsDefined : ∀ (n : Nat), (B.operations n).exactnessProperty ∧ (B.operations n).mayesFormula

def BocksteinClosed (B : BocksteinPackage) : Prop :=
  B.compatibilityWithDyerLashof ∧ ∀ (n : Nat), (B.operations n).exactnessProperty ∧ (B.operations n).mayesFormula

theorem bockstein_closed_from_evidence (B : BocksteinPackage) (E : BocksteinEvidence B) : BocksteinClosed B := by
  exact And.intro E.compatibilityWithDyerLashofClosed E.operationsDefined

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse
