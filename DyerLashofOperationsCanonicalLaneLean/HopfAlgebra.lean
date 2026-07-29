import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DyerLashofOperationsCanonicalLaneLean.AdemRelations

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure HopfAlgebraStructure {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D} where
  diagonal : S.coefficients → S.coefficients ⊗ S.coefficients
  counit : S.coefficients → S.coefficients
  antipode : S.coefficients → S.coefficients
  coassociativity : Prop
  counitAxiom : Prop
  antipodeAxiom : Prop

structure HopfAlgebraEvidence {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D}
    (H : HopfAlgebraStructure A) where
  coassociativityClosed : H.coassociativity
  counitAxiomClosed : H.counitAxiom
  antipodeAxiomClosed : H.antipodeAxiom

def HopfAlgebraClosed {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D}
    (H : HopfAlgebraStructure A) : Prop :=
  H.coassociativity ∧ H.counitAxiom ∧ H.antipodeAxiom

theorem hopf_algebra_closed_from_evidence
    {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D}
    (H : HopfAlgebraStructure A) (E : HopfAlgebraEvidence H) : HopfAlgebraClosed H := by
  exact And.intro E.coassociativityClosed (And.intro E.counitAxiomClosed E.antipodeAxiomClosed)

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse