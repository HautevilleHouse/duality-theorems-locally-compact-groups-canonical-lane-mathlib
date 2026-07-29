import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.FellDuality

/-!
# Takai Duality Package
-/

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure TakaiDualityPackage {P : PontryaginDualityPackage}
    {T : TannakaKreinDualityPackage P} (F : FellDualityPackage T) where
  crossedProduct : Type u
  dualAction : Type u
  takaiIsomorphism : Prop
  crossedProductDuality : Prop
  iterationProperty : Prop

structure TakaiDualityEvidence {P : PontryaginDualityPackage}
    {T : TannakaKreinDualityPackage P} {F : FellDualityPackage T}
    (K : TakaiDualityPackage F) where
  takaiIsomorphismClosed : K.takaiIsomorphism
  crossedProductDualityClosed : K.crossedProductDuality
  iterationPropertyClosed : K.iterationProperty

def TakaiDualityClosed {P : PontryaginDualityPackage}
    {T : TannakaKreinDualityPackage P} {F : FellDualityPackage T}
    (K : TakaiDualityPackage F) : Prop :=
  K.takaiIsomorphism ∧ K.crossedProductDuality ∧ K.iterationProperty

theorem takai_duality_closed_from_evidence {P : PontryaginDualityPackage}
    {T : TannakaKreinDualityPackage P} {F : FellDualityPackage T}
    (K : TakaiDualityPackage F) (E : TakaiDualityEvidence K) :
    TakaiDualityClosed K := by
  exact And.intro E.takaiIsomorphismClosed
    (And.intro E.crossedProductDualityClosed E.iterationPropertyClosed)

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse