import EconomicsProducerTheoryCanonicalLaneLean.ProducerTheoryCore

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure SupplyResponsePackage where
  outputPrice : ℝ
  inputPrices : Type
  outputSupply : ℝ → ℝ
  inputDemand : Type → ℝ
  lawOfSupply : Prop
  homogeneity : Prop
  symmetryCondition : Prop

structure SupplyResponseEvidence (S : SupplyResponsePackage) where
  lawOfSupplyClosed : S.lawOfSupply
  homogeneityClosed : S.homogeneity
  symmetryConditionClosed : S.symmetryCondition

def SupplyResponseClosed (S : SupplyResponsePackage) : Prop :=
  S.lawOfSupply ∧ S.homogeneity ∧ S.symmetryCondition

theorem supply_response_closed_from_evidence (S : SupplyResponsePackage) (E : SupplyResponseEvidence S) :
    SupplyResponseClosed S := by
  exact And.intro E.lawOfSupplyClosed (And.intro E.homogeneityClosed E.symmetryConditionClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse