import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProductionSetPackage where
  inputVector : Vector ℝ
  outputVector : Vector ℝ
  technologySet : Set (Vector ℝ × Vector ℝ)
  closedAndConvex : Prop
  freeDisposal : Prop
  irreversibility : Prop

def ProductionSetClosed (P : ProductionSetPackage) : Prop :=
  P.closedAndConvex ∧ P.freeDisposal ∧ P.irreversibility

theorem closed_from_evidence (P : ProductionSetPackage) (h : ProductionSetClosed P) : P.closedAndConvex := h.1

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse
