import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProducerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProducerAdmittedObject where
  space : ProducerSpace
  profitMaximization : Prop
  costMinimization : Prop
  supplyFunction : Type
  demandFunction : Type
  equilibrium: Prop
  conclusion : equilibrium

def ProducerWitnessClosed (O : ProducerAdmittedObject) : Prop :=
  O.equilibrium

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse
