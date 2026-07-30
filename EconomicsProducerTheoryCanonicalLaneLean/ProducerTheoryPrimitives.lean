import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProductionSet (Firm : Type) (Commodity : Type) where
  inputOutputPairs : Firm → Set (Commodity × Commodity)
  convex : Prop
  closed : Prop
  freeDisposal : Prop
  convexTerm : convex
  closedTerm : closed
  freeDisposalTerm : freeDisposal

structure ProducerObjective (Firm : Type) (Price : Type) [Add Price] [Mul Price] where
  profitFunction : Firm → Price → Price
  profitMaximization : Prop
  profitMaximizationTerm : profitMaximization

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse