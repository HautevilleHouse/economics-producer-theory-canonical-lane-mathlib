import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure SupplyFunctionPackage where
  productionSet : ProductionSetPackage
  priceDomain : Set (productionSet.inputSpace → ℝ)
  supplyCorrespondence : (productionSet.inputSpace → ℝ) → Set (productionSet.outputSpace)
  homogeneity : Prop
  monotonicity : Prop
  convexity : Prop

structure SupplyFunctionEvidence (S : SupplyFunctionPackage) where
  homogeneityClosed : S.homogeneity
  monotonicityClosed : S.monotonicity
  convexityClosed : S.convexity

def SupplyFunctionClosed (S : SupplyFunctionPackage) : Prop :=
  S.homogeneity ∧ S.monotonicity ∧ S.convexity

theorem supply_function_closed_from_evidence
    (S : SupplyFunctionPackage) (Ev : SupplyFunctionEvidence S) : SupplyFunctionClosed S := by
  exact And.intro Ev.homogeneityClosed
    (And.intro Ev.monotonicityClosed Ev.convexityClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse