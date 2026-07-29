import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.LemmaStatement

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LinkageCompleteIntersectionsDeterminantalIdealsLemmaAdmittedObject where
  D : DeterminantalVarietyPackage
  L : LinkagePackage D
  C : CompleteIntersectionPackage D
  LI : LiaisonOfDeterminantalIdealsPackage D L C
  LS : LemmaStatementPackage D L C LI
  evidence : LemmaStatementEvidence LS

def ConstrainedLinkageCompleteIntersectionsDeterminantalIdealsLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linkage_complete_intersections_determinantal_ideals_lemma_endgame (A : AdmissibleClass) :
    ConstrainedLinkageCompleteIntersectionsDeterminantalIdealsLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse