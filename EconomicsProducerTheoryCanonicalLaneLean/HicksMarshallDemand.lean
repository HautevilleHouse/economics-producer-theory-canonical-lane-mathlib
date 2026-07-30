import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsProducerTheoryCanonicalLaneLean

structure HicksMarshallDemandPackage where
  productionSet : ProductionSetPackage
  inputPrices : productionSet.inputSpace → ℝ
  outputPrice : ℝ
  factorDemand : productionSet.inputSpace → ℝ
  homogeneity : Prop
  ownPriceNegativity : Prop
  crossPriceSymmetry : Prop

structure HicksMarshallDemandEvidence (H : HicksMarshallDemandPackage) where
  homogeneityClosed : H.homogeneity
  ownPriceNegativityClosed : H.ownPriceNegativity
  crossPriceSymmetryClosed : H.crossPriceSymmetry

def HicksMarshallDemandClosed (H : HicksMarshallDemandPackage) : Prop :=
  H.homogeneity ∧ H.ownPriceNegativity ∧ H.crossPriceSymmetry

theorem hicks_marshall_demand_closed_from_evidence
    (H : HicksMarshallDemandPackage) (Ev : HicksMarshallDemandEvidence H) :
    HicksMarshallDemandClosed H := by
  exact And.intro Ev.homogeneityClosed
    (And.intro Ev.ownPriceNegativityClosed Ev.crossPriceSymmetryClosed)

end EconomicsProducerTheoryCanonicalLaneLean
end HautevilleHouse