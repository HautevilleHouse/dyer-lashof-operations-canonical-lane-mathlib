import DyerLashofOperationsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DyerLashofOperationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DyerLashofWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DyerLashofOperationsCanonicalLaneLean
end HautevilleHouse