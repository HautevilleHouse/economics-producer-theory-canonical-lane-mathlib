import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProfitMaximizationPackage where
  productionSet : Prop
  outputSupply : Prop
  factorDemand : Prop
  profitFunction : Prop
  profitMaximizationCondition : Prop
  pricePositivity : Prop
  regularityConditions : Prop

structure ProfitMaximizationEvidence (P : ProfitMaximizationPackage) where
  productionSetClosed : P.productionSet
  outputSupplyClosed : P.outputSupply
  factorDemandClosed : P.factorDemand
  profitFunctionClosed : P.profitFunction
  profitMaximizationConditionClosed : P.profitMaximizationCondition
  pricePositivityClosed : P.pricePositivity
  regularityConditionsClosed : P.regularityConditions

def ProfitMaximizationClosed (P : ProfitMaximizationPackage) : Prop :=
  P.productionSet ∧ P.outputSupply ∧ P.factorDemand ∧
  P.profitFunction ∧ P.profitMaximizationCondition ∧
  P.pricePositivity ∧ P.regularityConditions

theorem profit_maximization_closed_from_evidence (P : ProfitMaximizationPackage)
    (E : ProfitMaximizationEvidence P) : ProfitMaximizationClosed P :=
  And.intro E.productionSetClosed
    (And.intro E.outputSupplyClosed
      (And.intro E.factorDemandClosed
        (And.intro E.profitFunctionClosed
          (And.intro E.profitMaximizationConditionClosed
            (And.intro E.pricePositivityClosed
              E.regularityConditionsClosed)))))

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse