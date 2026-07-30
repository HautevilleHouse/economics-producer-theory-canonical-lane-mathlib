import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  productionPlan : commoditySpace → ℝ
  consumptionPlan : commoditySpace → ℝ
  profitMaximization : Prop
  utilityMaximization : Prop
  marketClearing : Prop

structure ArrowDebreuEquilibriumEvidence (E : ArrowDebreuEquilibriumPackage) where
  profitMaximizationClosed : E.profitMaximization
  utilityMaximizationClosed : E.utilityMaximization
  marketClearingClosed : E.marketClearing

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEquilibriumPackage) : Prop :=
  E.profitMaximization ∧ E.utilityMaximization ∧ E.marketClearing

theorem arrow_debreu_equilibrium_closed_from_evidence
    (E : ArrowDebreuEquilibriumPackage) (Ev : ArrowDebreuEquilibriumEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.profitMaximizationClosed
    (And.intro Ev.utilityMaximizationClosed Ev.marketClearingClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse