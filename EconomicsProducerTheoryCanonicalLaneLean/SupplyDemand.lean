import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure SupplyFunctionPackage where
  price : ℝ → ℝ
  supplyCurve : ℝ → ℝ
  lawOfSupply : Prop
  continuity : Prop

structure DemandFunctionPackage where
  price : ℝ → ℝ
  demandCurve : ℝ → ℝ
  lawOfDemand : Prop
  continuity : Prop

structure MarketEquilibriumPackage where
  supply : SupplyFunctionPackage
  demand : DemandFunctionPackage
  equilibriumPrice : ℝ
  equilibriumQuantity : ℝ
  existence : Prop
  uniqueness : Prop
  stability : Prop

def MarketEquilibriumClosed (M : MarketEquilibriumPackage) : Prop :=
  M.existence ∧ M.uniqueness ∧ M.stability

theorem market_equilibrium_endgame (M : MarketEquilibriumPackage) (h : MarketEquilibriumClosed M) : M.existence := h.1

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse
