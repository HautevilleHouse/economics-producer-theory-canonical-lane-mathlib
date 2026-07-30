import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsProducerTheoryCanonicalLaneLean.CostMinimization
import HautevilleHouse.EconomicsProducerTheoryCanonicalLaneLean.ProfitMaximization

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure DualityPackage {C : CostMinimizationPackage} {P : ProfitMaximizationPackage}
    (costEvidence : CostMinimizationEvidence C) (profitEvidence : ProfitMaximizationEvidence P) where
  costProfitDuality : Prop
  shephardsLemma : Prop
  hotellingsLemma : Prop
  convexity : Prop
  homogeneity : Prop
  monotonicity : Prop
  costProfitDualityTerm : costProfitDuality
  shephardsLemmaTerm : shephardsLemma
  hotellingsLemmaTerm : hotellingsLemma
  convexityTerm : convexity
  homogeneityTerm : homogeneity
  monotonicityTerm : monotonicity

structure DualityEvidence {C : CostMinimizationPackage} {P : ProfitMaximizationPackage}
    {costEvidence : CostMinimizationEvidence C} {profitEvidence : ProfitMaximizationEvidence P}
    (D : DualityPackage costEvidence profitEvidence) where
  costProfitDualityClosed : D.costProfitDuality
  shephardsLemmaClosed : D.shephardsLemma
  hotellingsLemmaClosed : D.hotellingsLemma
  convexityClosed : D.convexity
  homogeneityClosed : D.homogeneity
  monotonicityClosed : D.monotonicity

def DualityClosed {C : CostMinimizationPackage} {P : ProfitMaximizationPackage}
    {costEvidence : CostMinimizationEvidence C} {profitEvidence : ProfitMaximizationEvidence P}
    (D : DualityPackage costEvidence profitEvidence) : Prop :=
  D.costProfitDuality ∧ D.shephardsLemma ∧ D.hotellingsLemma ∧
  D.convexity ∧ D.homogeneity ∧ D.monotonicity

theorem duality_closed_from_evidence {C : CostMinimizationPackage} {P : ProfitMaximizationPackage}
    {costEvidence : CostMinimizationEvidence C} {profitEvidence : ProfitMaximizationEvidence P}
    (D : DualityPackage costEvidence profitEvidence) (E : DualityEvidence D) :
    DualityClosed D :=
  And.intro E.costProfitDualityClosed
    (And.intro E.shephardsLemmaClosed
      (And.intro E.hotellingsLemmaClosed
        (And.intro E.convexityClosed
          (And.intro E.homogeneityClosed
            E.monotonicityClosed))))

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse