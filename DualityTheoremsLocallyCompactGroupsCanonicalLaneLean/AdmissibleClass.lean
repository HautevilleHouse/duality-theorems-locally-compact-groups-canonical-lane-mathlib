import DualityTheoremsLocallyCompactGroupsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : DualityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityTheoremsLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse