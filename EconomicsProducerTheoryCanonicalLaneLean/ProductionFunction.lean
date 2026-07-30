import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProductionFunctionPackage where
  inputVector : Type u
  outputScalar : Type v
  productionSet : Prop
  differentiability : Prop
  concavity : Prop
  homogeneity : Prop

structure ProductionFunctionEvidence (P : ProductionFunctionPackage) where
  productionSetClosed : P.productionSet
  differentiabilityClosed : P.differentiability
  concavityClosed : P.concavity
  homogeneityClosed : P.homogeneity

def ProductionFunctionClosed (P : ProductionFunctionPackage) : Prop :=
  P.productionSet ∧ P.differentiability ∧ P.concavity ∧ P.homogeneity

theorem production_function_closed_from_evidence (P : ProductionFunctionPackage)
    (E : ProductionFunctionEvidence P) : ProductionFunctionClosed P := by
  exact And.intro E.productionSetClosed
    (And.intro E.differentiabilityClosed
      (And.intro E.concavityClosed E.homogeneityClosed))

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse