import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure StoneWeierstrassPackage {G : LocallyCompactGroupPackage} where
  functionAlgebra : Type u
  algebraStructure : Prop
  separatesPoints : Prop
  containsConstants : Prop
  closedUnderConjugation : Prop
  uniformClosureEqualsAll : Prop
  stoneWeierstrassTheorem : Prop

structure StoneWeierstrassEvidence {G : LocallyCompactGroupPackage}
    (S : StoneWeierstrassPackage G) where
  algebraStructureClosed : S.algebraStructure
  separatesPointsClosed : S.separatesPoints
  containsConstantsClosed : S.containsConstants
  closedUnderConjugationClosed : S.closedUnderConjugation
  uniformClosureEqualsAllClosed : S.uniformClosureEqualsAll
  stoneWeierstrassTheoremClosed : S.stoneWeierstrassTheorem

def StoneWeierstrassClosed {G : LocallyCompactGroupPackage}
    (S : StoneWeierstrassPackage G) : Prop :=
  S.algebraStructure ∧ S.separatesPoints ∧ S.containsConstants ∧
  S.closedUnderConjugation ∧ S.uniformClosureEqualsAll ∧ S.stoneWeierstrassTheorem

theorem stoneWeierstrassClosedFromEvidence {G : LocallyCompactGroupPackage}
    (S : StoneWeierstrassPackage G) (E : StoneWeierstrassEvidence S) :
    StoneWeierstrassClosed S := by
  exact And.intro E.algebraStructureClosed (And.intro E.separatesPointsClosed
    (And.intro E.containsConstantsClosed (And.intro E.closedUnderConjugationClosed
      (And.intro E.uniformClosureEqualsAllClosed E.stoneWeierstrassTheoremClosed))))

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
