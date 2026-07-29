import canonicalLaneMathlib.AdmissibleClass
import DualityTheoremsLocallyCompactGroups.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroups

structure DualGroup (G : LocallyCompactGroup) where
  dualCarrier : Type u
  dualTop : TopologicalSpace dualCarrier
  dualGroup : Group dualCarrier
  pontryaginDuality : Prop
  dualLocallyCompact : Prop

def DualGroupClosed (G : LocallyCompactGroup) (Ghat : DualGroup G) : Prop :=
  Ghat.pontryaginDuality ∧ Ghat.dualLocallyCompact

end DualityTheoremsLocallyCompactGroups
end HautevilleHouse
