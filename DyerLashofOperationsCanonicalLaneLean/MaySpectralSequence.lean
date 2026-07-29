import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DyerLashofOperationsCanonicalLaneLean.HopfAlgebra

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure MaySpectralSequencePackage {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D}
    {H : HopfAlgebraStructure A} where
  filtration : Prop
  e1Page : Prop
  differentials : Prop
  abutment : Prop

structure MaySpectralSequenceEvidence {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D}
    {H : HopfAlgebraStructure A} (M : MaySpectralSequencePackage H) where
  filtrationClosed : M.filtration
  e1PageClosed : M.e1Page
  differentialsClosed : M.differentials
  abutmentClosed : M.abutment

def MaySpectralSequenceClosed {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D}
    {H : HopfAlgebraStructure A} (M : MaySpectralSequencePackage H) : Prop :=
  M.filtration ∧ M.e1Page ∧ M.differentials ∧ M.abutment

theorem may_spectral_sequence_closed_from_evidence
    {S : SteenrodAlgebra} {D : DyerLashofOperationsPackage S} {A : AdemRelationsPackage D}
    {H : HopfAlgebraStructure A} (M : MaySpectralSequencePackage H) (E : MaySpectralSequenceEvidence M) :
    MaySpectralSequenceClosed M := by
  exact And.intro E.filtrationClosed (And.intro E.e1PageClosed (And.intro E.differentialsClosed E.abutmentClosed))

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse