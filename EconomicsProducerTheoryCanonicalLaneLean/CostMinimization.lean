import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure CostMinimizationPackage where
  productionSet : Prop
  factorDemand : Prop
  costFunction : Prop
  conditionalFactorDemand : Prop
  costMinimizationCondition : Prop
  pricePositivity : Prop

structure CostMinimizationEvidence (C : CostMinimizationPackage) where
  productionSetClosed : C.productionSet
  factorDemandClosed : C.factorDemand
  costFunctionClosed : C.costFunction
  conditionalFactorDemandClosed : C.conditionalFactorDemand
  costMinimizationConditionClosed : C.costMinimizationCondition
  pricePositivityClosed : C.pricePositivity

def CostMinimizationClosed (C : CostMinimizationPackage) : Prop :=
  C.productionSet ∧ C.factorDemand ∧ C.costFunction ∧
  C.conditionalFactorDemand ∧ C.costMinimizationCondition ∧ C.pricePositivity

theorem cost_minimization_closed_from_evidence (C : CostMinimizationPackage)
    (E : CostMinimizationEvidence C) : CostMinimizationClosed C :=
  And.intro E.productionSetClosed
    (And.intro E.factorDemandClosed
      (And.intro E.costFunctionClosed
        (And.intro E.conditionalFactorDemandClosed
          (And.intro E.costMinimizationConditionClosed
            E.pricePositivityClosed))))

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse