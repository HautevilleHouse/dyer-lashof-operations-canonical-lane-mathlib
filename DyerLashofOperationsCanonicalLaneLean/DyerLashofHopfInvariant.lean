import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

structure DyerLashofHopfInvariantPackage where
  sourceDimension : ℕ
  sourceHomology : Type
  targetDimension : ℕ
  targetHomology : Type
  hopfInvariant : (sourceHomology → targetHomology) → ℤ
  hopfInvariantProperties : Prop

structure DyerLashofHopfInvariantEvidence (P : DyerLashofHopfInvariantPackage) where
  hopfInvariantPropertiesClosed : P.hopfInvariantProperties

def DyerLashofHopfInvariantClosed (P : DyerLashofHopfInvariantPackage) : Prop :=
  P.hopfInvariantProperties

theorem dyer_lashof_hopf_invariant_closed_from_evidence (P : DyerLashofHopfInvariantPackage)
    (E : DyerLashofHopfInvariantEvidence P) : DyerLashofHopfInvariantClosed P := by
  exact E.hopfInvariantPropertiesClosed

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse