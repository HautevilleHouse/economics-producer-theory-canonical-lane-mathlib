import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure SupplyCorrespondence (Firm : Type) (Price : Type) (Commodity : Type) where
  supplySet : Price → Set (Commodity)
  upperHemicontinuous : Prop
  convexValued : Prop
  homogeneousOfDegreeZero : Prop
  upperHemicontinuousTerm : upperHemicontinuous
  convexValuedTerm : convexValued
  homogeneousOfDegreeZeroTerm : homogeneousOfDegreeZero

structure SupplyCorrespondenceEvidence (Firm : Type) (Price : Type) (Commodity : Type) (S : SupplyCorrespondence Firm Price Commodity) where
  upperHemicontinuousClosed : S.upperHemicontinuous
  convexValuedClosed : S.convexValued
  homogeneousOfDegreeZeroClosed : S.homogeneousOfDegreeZero

def SupplyCorrespondenceClosed (Firm : Type) (Price : Type) (Commodity : Type) (S : SupplyCorrespondence Firm Price Commodity) : Prop :=
  S.upperHemicontinuous ∧ S.convexValued ∧ S.homogeneousOfDegreeZero

theorem supply_correspondence_closed_from_evidence (Firm : Type) (Price : Type) (Commodity : Type) (S : SupplyCorrespondence Firm Price Commodity) (E : SupplyCorrespondenceEvidence Firm Price Commodity S) : SupplyCorrespondenceClosed Firm Price Commodity S := by
  exact And.intro E.upperHemicontinuousClosed (And.intro E.convexValuedClosed E.homogeneousOfDegreeZeroClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse