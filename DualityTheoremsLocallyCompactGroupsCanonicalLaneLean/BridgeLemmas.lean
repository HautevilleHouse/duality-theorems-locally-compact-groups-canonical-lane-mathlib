import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse