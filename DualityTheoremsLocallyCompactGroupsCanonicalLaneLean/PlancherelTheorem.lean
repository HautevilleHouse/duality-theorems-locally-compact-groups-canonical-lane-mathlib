import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.LocallyCompactGroup
import HautevilleHouse.DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.DualGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure PlancherelTheoremPackage {G : LocallyCompactGroupPackage}
    (D : DualGroupPackage G) where
  haarMeasure : G.group → Set Unit
  dualHaarMeasure : D.characterGroup → Set Unit
  fourierTransform : (G.group → ℂ) → (D.characterGroup → ℂ)
  isIsometry : Prop
  inversionFormula : Prop
  plancherelStatement : Prop

structure PlancherelTheoremEvidence {G : LocallyCompactGroupPackage}
    {D : DualGroupPackage G} (P : PlancherelTheoremPackage D) where
  isIsometryClosed : P.isIsometry
  inversionFormulaClosed : P.inversionFormula
  plancherelStatementClosed : P.plancherelStatement

def PlancherelTheoremClosed {G : LocallyCompactGroupPackage}
    {D : DualGroupPackage G} (P : PlancherelTheoremPackage D) : Prop :=
  P.isIsometry ∧ P.inversionFormula ∧ P.plancherelStatement

theorem plancherelTheoremClosedFromEvidence {G : LocallyCompactGroupPackage}
    {D : DualGroupPackage G} (P : PlancherelTheoremPackage D)
    (E : PlancherelTheoremEvidence P) : PlancherelTheoremClosed P := by
  exact And.intro E.isIsometryClosed (And.intro E.inversionFormulaClosed E.plancherelStatementClosed)

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
