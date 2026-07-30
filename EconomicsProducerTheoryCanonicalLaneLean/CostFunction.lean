import EconomicsProducerTheoryCanonicalLaneLean.ProducerTheoryCore

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure CostFunctionPackage where
  inputPrices : Type
  outputLevel : ℝ
  totalCost : ℝ
  marginalCost : ℝ
  averageCost : ℝ
  convexInOutput : Prop
  homothetic : Prop

structure CostFunctionEvidence (C : CostFunctionPackage) where
  convexInOutputClosed : C.convexInOutput
  homotheticClosed : C.homothetic

def CostFunctionClosed (C : CostFunctionPackage) : Prop :=
  C.convexInOutput ∧ C.homothetic

theorem cost_function_closed_from_evidence (C : CostFunctionPackage) (E : CostFunctionEvidence C) :
    CostFunctionClosed C := by
  exact And.intro E.convexInOutputClosed E.homotheticClosed

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse