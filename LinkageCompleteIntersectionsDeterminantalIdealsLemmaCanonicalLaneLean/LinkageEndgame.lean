import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageAdmissibleObject where
  L : LinkagePackage
  D : DeterminantalIdealsPackage L
  C : CompleteIntersectionPackage L
  P : DeterminantalLinkagePackage D C

structure LinkageAdmissibleClass where
  object : LinkageAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : LinkageAdmissibleClass) : Prop :=
  let P := A.object.P
  DeterminantalLinkageClosed P

theorem bridge_from_admissible_class (A : LinkageAdmissibleClass) : bridgeClosed A := by
  let P := A.object.P
  exact determinantal_linkage_closed_from_evidence P

def gateClosed (A : LinkageAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : LinkageAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedLinkageClosure (A : LinkageAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linkage_endgame (A : LinkageAdmissibleClass) : ConstrainedLinkageClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
