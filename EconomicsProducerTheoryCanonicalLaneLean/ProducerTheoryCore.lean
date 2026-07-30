import EconomicsProducerTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProducerAdmittedObject where
  commoditySpace : Type
  priceSystem : Type
  productionSet : Prop
  profitMaximization : Prop
  supplyCorrespondence : Prop
  conclusion : profitMaximization

def ProducerWitnessClosed (O : ProducerAdmittedObject) : Prop :=
  O.profitMaximization

structure CommodityMarket where
  goods : Type
  prices : goods → ℝ
  demand : goods → ℝ
  supply : goods → ℝ
  equilibrium : Prop

structure ProductionTechnology where
  inputs : Type
  outputs : Type
  productionFunction : inputs → outputs → Prop
  convexity : Prop
  returnsToScale : Prop

structure CostMinimization where
  inputPrices : inputs → ℝ
  conditionalDemand : inputs → ℝ
  costFunction : ℝ → ℝ
  shephardLemma : Prop

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse