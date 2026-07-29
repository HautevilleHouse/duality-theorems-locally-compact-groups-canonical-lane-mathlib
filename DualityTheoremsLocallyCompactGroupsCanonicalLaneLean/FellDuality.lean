import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.TannakaKreinDuality

/-!
# Fell Duality Package
-/

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure FellDualityPackage {P : PontryaginDualityPackage}
    (T : TannakaKreinDualityPackage P) where
  groupCstarAlgebra : Type u
  primitiveIdealSpace : Type u
  hausdorffTopology : Prop
  dualGroupAction : Prop
  isomorphismsOfCstarAlgebras : Prop
  representationTheoryCorrespondence : Prop

structure FellDualityEvidence {P : PontryaginDualityPackage}
    {T : TannakaKreinDualityPackage P} (F : FellDualityPackage T) where
  hausdorffTopologyClosed : F.hausdorffTopology
  dualGroupActionClosed : F.dualGroupAction
  isomorphismsOfCstarAlgebrasClosed : F.isomorphismsOfCstarAlgebras
  representationTheoryCorrespondenceClosed : F.representationTheoryCorrespondence

def FellDualityClosed {P : PontryaginDualityPackage}
    {T : TannakaKreinDualityPackage P} (F : FellDualityPackage T) : Prop :=
  F.hausdorffTopology ∧ F.dualGroupAction ∧
  F.isomorphismsOfCstarAlgebras ∧ F.representationTheoryCorrespondence

theorem fell_duality_closed_from_evidence {P : PontryaginDualityPackage}
    {T : TannakaKreinDualityPackage P} (F : FellDualityPackage T)
    (E : FellDualityEvidence F) : FellDualityClosed F := by
  exact And.intro E.hausdorffTopologyClosed
    (And.intro E.dualGroupActionClosed
      (And.intro E.isomorphismsOfCstarAlgebrasClosed
        E.representationTheoryCorrespondenceClosed))

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse