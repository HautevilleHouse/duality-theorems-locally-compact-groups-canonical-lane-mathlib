import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroups

structure LocallyCompactGroup where
  carrier : Type u
  top : TopologicalSpace carrier
  group : Group carrier
  locallyCompact : Prop
  hausdorff : Prop

def LocallyCompactGroupClosed (G : LocallyCompactGroup) : Prop :=
  G.locallyCompact ∧ G.hausdorff

end DualityTheoremsLocallyCompactGroups
end HautevilleHouse
