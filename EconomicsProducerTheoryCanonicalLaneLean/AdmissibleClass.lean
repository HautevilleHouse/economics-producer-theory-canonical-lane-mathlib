import EconomicsProducerTheoryCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : ProducerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ProducerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse