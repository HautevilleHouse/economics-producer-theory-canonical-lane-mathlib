import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure ProfitFunction (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] where
  profit : Price → Price
  continuous : Prop
  convex : Prop
  homogeneousOfDegreeOne : Prop
  continuousTerm : continuous
  convexTerm : convex
  homogeneousOfDegreeOneTerm : homogeneousOfDegreeOne

structure ProfitFunctionEvidence (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] (P : ProfitFunction Firm Price Commodity) where
  continuousClosed : P.continuous
  convexClosed : P.convex
  homogeneousOfDegreeOneClosed : P.homogeneousOfDegreeOne

def ProfitFunctionClosed (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] (P : ProfitFunction Firm Price Commodity) : Prop :=
  P.continuous ∧ P.convex ∧ P.homogeneousOfDegreeOne

theorem profit_function_closed_from_evidence (Firm : Type) (Price : Type) (Commodity : Type) [Add Price] [Mul Price] (P : ProfitFunction Firm Price Commodity) (E : ProfitFunctionEvidence Firm Price Commodity P) : ProfitFunctionClosed Firm Price Commodity P := by
  exact And.intro E.continuousClosed (And.intro E.convexClosed E.homogeneousOfDegreeOneClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse