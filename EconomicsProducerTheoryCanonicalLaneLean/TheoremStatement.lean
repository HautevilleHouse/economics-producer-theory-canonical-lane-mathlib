import HautevilleHouse.EconomicsProducerTheoryCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProducerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProducerAdmittedObject where
  space : ProducerSpace
  marketEquilibrium : Prop
  profitMaximization : Prop
  supplyResponse : Prop
  conclusion : marketEquilibrium ∧ profitMaximization ∧ supplyResponse

def ProducerWitnessClosed (O : ProducerAdmittedObject) : Prop :=
  O.marketEquilibrium ∧ O.profitMaximization ∧ O.supplyResponse

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse