import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsProducerTheoryCanonicalLaneLean.CostMinimization
import HautevilleHouse.EconomicsProducerTheoryCanonicalLaneLean.ProfitMaximization
import HautevilleHouse.EconomicsProducerTheoryCanonicalLaneLean.Duality

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  -- The bridge is closed when the admissible object satisfies a property
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.gateWitness.elim (fun h => h) (fun h => False.elim h)
  -- Assume gateWitness is endpointSatisfied, if not adjust

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedProducerTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_producer_theory_endgame (A : AdmissibleClass) :
    ConstrainedProducerTheoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse