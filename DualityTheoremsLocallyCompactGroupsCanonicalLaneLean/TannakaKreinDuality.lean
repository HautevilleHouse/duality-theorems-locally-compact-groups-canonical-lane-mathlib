import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.PontryaginDuality

/-!
# Tannaka–Krein Duality Package
-/

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure TannakaKreinDualityPackage (P : PontryaginDualityPackage) where
  compactGroup : Type u
  representationCategory : Type u
  fiberFunctor : Type u
  reconstructionIsomorphism : Prop
  tensorProductCompatibility : Prop
  endomorphismAlgebraRecovered : Prop
  monoidalStructurePreserved : Prop

structure TannakaKreinDualityEvidence {P : PontryaginDualityPackage}
    (T : TannakaKreinDualityPackage P) where
  reconstructionIsomorphismClosed : T.reconstructionIsomorphism
  tensorProductCompatibilityClosed : T.tensorProductCompatibility
  endomorphismAlgebraRecoveredClosed : T.endomorphismAlgebraRecovered
  monoidalStructurePreservedClosed : T.monoidalStructurePreserved

def TannakaKreinDualityClosed {P : PontryaginDualityPackage}
    (T : TannakaKreinDualityPackage P) : Prop :=
  T.reconstructionIsomorphism ∧ T.tensorProductCompatibility ∧
  T.endomorphismAlgebraRecovered ∧ T.monoidalStructurePreserved

theorem tannaka_krein_duality_closed_from_evidence
    {P : PontryaginDualityPackage} (T : TannakaKreinDualityPackage P)
    (E : TannakaKreinDualityEvidence T) : TannakaKreinDualityClosed T := by
  exact And.intro E.reconstructionIsomorphismClosed
    (And.intro E.tensorProductCompatibilityClosed
      (And.intro E.endomorphismAlgebraRecoveredClosed
        E.monoidalStructurePreservedClosed))

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse