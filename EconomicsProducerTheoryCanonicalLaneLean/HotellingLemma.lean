import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure HotellingLemma (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] [NormedAddCommGroup Price] where
  profitFunction : ProfitFunction Firm Price Commodity
  supplyCorrespondence : SupplyCorrespondence Firm Price Commodity
  derivativeRelation : Prop
  derivativeRelationTerm : derivativeRelation

structure HotellingLemmaEvidence (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] [NormedAddCommGroup Price] (H : HotellingLemma Firm Price Commodity) where
  supplyCorrespondenceClosed : SupplyCorrespondenceClosed Firm Price Commodity H.supplyCorrespondence
  profitFunctionClosed : ProfitFunctionClosed Firm Price Commodity H.profitFunction
  derivativeRelationClosed : H.derivativeRelation

def HotellingLemmaClosed (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] [NormedAddCommGroup Price] (H : HotellingLemma Firm Price Commodity) : Prop :=
  SupplyCorrespondenceClosed Firm Price Commodity H.supplyCorrespondence ∧ ProfitFunctionClosed Firm Price Commodity H.profitFunction ∧ H.derivativeRelation

theorem hotelling_lemma_closed_from_evidence (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] [NormedAddCommGroup Price] (H : HotellingLemma Firm Price Commodity) (E : HotellingLemmaEvidence Firm Price Commodity H) : HotellingLemmaClosed Firm Price Commodity H := by
  exact And.intro E.supplyCorrespondenceClosed (And.intro E.profitFunctionClosed E.derivativeRelationClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse