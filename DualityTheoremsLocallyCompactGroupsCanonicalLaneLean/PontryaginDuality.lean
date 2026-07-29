import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure LocallyCompactAbelianGroup where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  topologicalGroup : TopologicalGroup carrier
  locallyCompact : LocallyCompactSpace carrier
  abelian : AbelianGroup carrier

structure PontryaginDualityPackage (G : LocallyCompactAbelianGroup) where
  dualGroup : LocallyCompactAbelianGroup
  pontryaginMap : G.carrier → (dualGroup.carrier → Circle)
  dualityIsomorphism : Prop
  pontryaginMapContinuous : Prop
  dualPontryaginMapContinuous : Prop
  dualityIsomorphismProof : dual.datum.dualityIsomorphism

structure PontryaginDualityEvidence {G : LocallyCompactAbelianGroup}
    (Pkg : PontryaginDualityPackage G) where
  pontryaginMapContinuousClosed : Pkg.pontryaginMapContinuous
  dualPontryaginMapContinuousClosed : Pkg.dualPontryaginMapContinuous
  dualityIsomorphismClosed : dual.datum.dualityIsomorphism

def PontryaginDualityClosed {G : LocallyCompactAbelianGroup}
    (Pkg : PontryaginDualityPackage G) : Prop :=
  Pkg.pontryaginMapContinuous ∧ Pkg.dualPontryaginMapContinuous ∧ Pkg.dualityIsomorphism

theorem pontryagin_duality_closed_from_evidence
    {G : LocallyCompactAbelianGroup} (Pkg : PontryaginDualityPackage G)
    (E : PontryaginDualityEvidence Pkg) : PontryaginDualityClosed Pkg := by
  exact And.intro E.pontryaginMapContinuousClosed
    (And.intro E.dualPontryaginMapContinuousClosed E.dualityIsomorphismClosed)

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
