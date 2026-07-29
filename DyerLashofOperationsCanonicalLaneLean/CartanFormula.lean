import DyerLashofOperationsCanonicalLaneLean.DyerLashofStructure

/-!
# Cartan Formula Package
-/

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure CartanFormulaPackage (A : DyerLashofAlgebra) where
  cartanFormula : Prop
  homotopyInterpretation : Prop
  derivedInclusions : Prop
  cartanFormulaClosed : cartanFormula
  homotopyInterpretationClosed : homotopyInterpretation
  derivedInclusionsClosed : derivedInclusions

def CartanFormulaClosed (A : DyerLashofAlgebra) (C : CartanFormulaPackage A) : Prop :=
  C.cartanFormula ∧ C.homotopyInterpretation ∧ C.derivedInclusions

theorem cartan_formula_closed_from_evidence (A : DyerLashofAlgebra) (C : CartanFormulaPackage A) :
    CartanFormulaClosed A C := by
  exact And.intro C.cartanFormulaClosed (And.intro C.homotopyInterpretationClosed C.derivedInclusionsClosed)

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse