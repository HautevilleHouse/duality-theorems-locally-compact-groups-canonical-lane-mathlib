import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsLocallyCompactGroups.TannakaKreinDuality
namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroups

structure GroupCAlgebra (G : LocallyCompactGroup) where
  CstarAlgebra : CstarAlgebra
  representation : G → Aut(CstarAlgebra)
  universalProperty : ∀ (A : CstarAlgebra), (G → Aut(A)) → (CstarAlgebra → A)

theorem group_calgebra_closed (G : LocallyCompactGroup) (C : GroupCAlgebra G) : Prop :=
  C.universalProperty C.CstarAlgebra C.representation = id

end DualityTheoremsLocallyCompactGroups
end HautevilleHouse
