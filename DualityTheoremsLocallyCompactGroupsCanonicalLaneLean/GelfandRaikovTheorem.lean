import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.PontryaginDuality

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure LocallyCompactGroup where
  group : Type u
  topology : TopologicalSpace group
  locallyCompact : Prop
  hausdorff : Prop

structure IrreducibleUnitaryRepresentation (G : LocallyCompactGroup) where
  hilbertSpace : Type v
  groupAction : G.group → (hilbertSpace → hilbertSpace)
  isUnitary : Prop
  irreducible : Prop
  continuity : Prop

structure GelfandRaikovTheoremPackage (G : LocallyCompactGroup) where
  representations : Set (IrreducibleUnitaryRepresentation G)
  pointSeparating : Prop
  denseInCstar : Prop
  positiveDefiniteFunctions : Prop

structure GelfandRaikovTheoremEvidence {G : LocallyCompactGroup}
    (R : GelfandRaikovTheoremPackage G) where
  pointSeparatingClosed : R.pointSeparating
  denseInCstarClosed : R.denseInCstar
  positiveDefiniteFunctionsClosed : R.positiveDefiniteFunctions

def GelfandRaikovTheoremClosed {G : LocallyCompactGroup}
    (R : GelfandRaikovTheoremPackage G) : Prop :=
  R.pointSeparating ∧ R.denseInCstar ∧ R.positiveDefiniteFunctions

theorem gelfand_raikov_theorem_closed_from_evidence {G : LocallyCompactGroup}
    (R : GelfandRaikovTheoremPackage G)
    (E : GelfandRaikovTheoremEvidence R) : GelfandRaikovTheoremClosed R := by
  exact And.intro E.pointSeparatingClosed
    (And.intro E.denseInCstarClosed E.positiveDefiniteFunctionsClosed)

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
