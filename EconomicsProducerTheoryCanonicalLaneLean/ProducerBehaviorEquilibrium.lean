import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProducerBehaviorEquilibriumPackage (P : ProductionFunctionPackage) (C : CostMinimizationPackage P) (M : ProfitMaximizationPackage P) (D : DualityPackage P C M) where
  competitiveEquilibrium : Prop
  existenceProof : Prop
  uniquenessProof : Prop
  welfareImplications : Prop

structure ProducerBehaviorEquilibriumEvidence {P : ProductionFunctionPackage} {C : CostMinimizationPackage P} {M : ProfitMaximizationPackage P} {D : DualityPackage P C M}
    (E : ProducerBehaviorEquilibriumPackage P C M D) where
  competitiveEquilibriumClosed : E.competitiveEquilibrium
  existenceProofClosed : E.existenceProof
  uniquenessProofClosed : E.uniquenessProof
  welfareImplicationsClosed : E.welfareImplications

def ProducerBehaviorEquilibriumClosed {P : ProductionFunctionPackage} {C : CostMinimizationPackage P} {M : ProfitMaximizationPackage P} {D : DualityPackage P C M}
    (E : ProducerBehaviorEquilibriumPackage P C M D) : Prop :=
  E.competitiveEquilibrium ∧ E.existenceProof ∧ E.uniquenessProof ∧ E.welfareImplications

theorem producer_behavior_equilibrium_closed_from_evidence {P : ProductionFunctionPackage} {C : CostMinimizationPackage P} {M : ProfitMaximizationPackage P} {D : DualityPackage P C M}
    (E : ProducerBehaviorEquilibriumPackage P C M D) (Ev : ProducerBehaviorEquilibriumEvidence E) : ProducerBehaviorEquilibriumClosed E := by
  exact And.intro Ev.competitiveEquilibriumClosed
    (And.intro Ev.existenceProofClosed
      (And.intro Ev.uniquenessProofClosed Ev.welfareImplicationsClosed))

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse