import EconomicsProducerTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProducerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse