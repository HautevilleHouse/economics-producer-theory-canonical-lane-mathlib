import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProductionEfficiency (Firm : Type) (Commodity : Type) where
  productionSet : ProductionSet Firm Commodity
  efficientPoints : Set Commodity
  paretoOptimality : Prop
  marginalRateOfSubstitution : Prop
  paretoOptimalityTerm : paretoOptimality
  marginalRateOfSubstitutionTerm : marginalRateOfSubstitution

structure ProductionEfficiencyEvidence (Firm : Type) (Commodity : Type) (E : ProductionEfficiency Firm Commodity) where
  productionSetClosed : E.productionSet.convex ∧ E.productionSet.closed ∧ E.productionSet.freeDisposal
  paretoOptimalityClosed : E.paretoOptimality
  marginalRateOfSubstitutionClosed : E.marginalRateOfSubstitution

def ProductionEfficiencyClosed (Firm : Type) (Commodity : Type) (E : ProductionEfficiency Firm Commodity) : Prop :=
  (E.productionSet.convex ∧ E.productionSet.closed ∧ E.productionSet.freeDisposal) ∧ E.paretoOptimality ∧ E.marginalRateOfSubstitution

theorem production_efficiency_closed_from_evidence (Firm : Type) (Commodity : Type) (E : ProductionEfficiency Firm Commodity) (Ev : ProductionEfficiencyEvidence Firm Commodity E) : ProductionEfficiencyClosed Firm Commodity E := by
  exact And.intro Ev.productionSetClosed (And.intro Ev.paretoOptimalityClosed Ev.marginalRateOfSubstitutionClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse